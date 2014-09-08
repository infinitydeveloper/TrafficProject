<?php
/**
 * @file views-view-table.tpl.php
 * Template to display a view as a table.
 *
 * - $title : The title of this group of rows.  May be empty.
 * - $header: An array of header labels keyed by field id.
 * - $header_classes: An array of header classes keyed by field id.
 * - $fields: An array of CSS IDs to use for each field id.
 * - $classes: A class or classes to apply to the table, based on settings.
 * - $row_classes: An array of classes to apply to each row, indexed by row
 *   number. This matches the index in $rows.
 * - $rows: An array of row items. Each row is an array of content.
 *   $rows are keyed by row number, fields within rows are keyed by field ID.
 * - $field_classes: An array of classes to apply to each field, indexed by
 *   field id, then row number. This matches the index in $rows.
 * @ingroup views_templates
 */
?>
<table <?php if ($classes) { print 'class="'. $classes . '" '; } ?><?php print $attributes; ?>>
  <?php if (!empty($title)) : ?>
    <caption><?php print $title; ?></caption>
  <?php endif; ?>
  <thead>
    <tr>
      <?php foreach ($header as $field => $label): ?>
        <th <?php if ($header_classes[$field]) { print 'class="'. $header_classes[$field] . '" '; } ?>>
          <?php print $label; ?>
        </th>
      <?php endforeach; ?>
    </tr>
  </thead>
  <?php if (empty($summary_only)): ?>
  <tbody>
    <?php foreach ($rows as $count => $row): ?>
      <tr class="<?php print implode(' ', $row_classes[$count]); ?>">
        <?php foreach ($row as $field => $content): 					/* Bereken class */ ?>
				<?php
					$verwijder = array("seconden","meter","km/u"); 			/* Verwijder Prefixes & Suffixes */
					$content2 = str_replace($verwijder, '', $content); 	/* Neem alleen getallen mee naar een nieuw variable */
						
					if (!empty($summarized[$field])) { 							/* Als views_summarize het gemiddelde van een veld berekent pas de class toe */
								$average = $summarized[$field]; 														
								preg_match_all('#\d+(?:\,\d{1,2})?#', $average, $match); /* Convert $average naar numeric variable */
					      $average = implode('', $match[0]) / 100;				/* Samenvoegen van het gemiddelde getal */
								$average = round((($content2/$average)*100), 0);/* Percentuele berekening waarde / gemiddelde * 100 op 2 decimalen */				
								
								
								if (!strpos($average,'reistijd') !== true) {
								if ($average < 100) { 
									$class = 'back_green';
								}
								elseif ($average < 90 && $average > 99) {
									$class = 'back_orange';
								}
								elseif ($average > 0 && $average > 89) {
									$class = 'back_red';
								}
							}	
							
						elseif (strpos($average,'snelheid') !== true) {
						if ($average > 100) { 
							$class = 'back_green';
						}
						elseif ($average > 90 && $average < 99) {
							$class = 'back_orange';
						}
						elseif ($average > 0 && $average < 89) {
							$class = 'back_red';
						}
					}	
					

				  }
					
					else {
						$class = 0;
					}			
					?>	
          <td <?php if ($field_classes[$field][$count]) { print 'class="'. $field_classes[$field][$count] . ' ' . $class . '"  '; } ?>
          	  <?php print drupal_attributes($field_attributes[$field][$count]); ?>>   
					  <?php if ($content == '-1 km/u' OR $content == '0 seconden' OR $content == '-1 seconden') { /* Vervang ongeldige waarde's */
										  $novalue = '0';
									}
							else {
								print $content;
								/* Uncomment onderstaande om percentage's te zien van berekende velden */
								// if (!empty($summarized[$field])) { echo " $average %"; } 						
							}?>				
					</td>
        <?php endforeach; ?>
      </tr>
    <?php endforeach; ?>
  </tbody>
  <?php endif; ?>
  <tfoot>
    <tr class="summary">
      <?php foreach ($header as $field => $label): ?>
        <td><?php if (!empty($summarized[$field])) { print $summarized[$field]; } 		/* Plaats print voor summarized om het gemiddelde onderaan te zien */ 		?>					
				</td>
      <?php endforeach; ?>
    </tr>
  </tfoot>
</table>