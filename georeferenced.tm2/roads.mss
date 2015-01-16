// Roads & Railways //
#tunnel { opacity: 0.5; }

#road,
#tunnel,
#bridge {
  ['mapnik::geometry_type'=2] {
    [class='motorway_link'],
    [class='motorway'] {
	  line-color:@red;
      line-width: 0.5;
      [zoom>=6] { line-width: 0.75; }
      [zoom>=10] { line-width: 1; }
      [zoom>=12] { line-width: 1.25; }
      [zoom>=14] { line-width: 2; }
      [zoom>=15] { line-width: 2.25; }
      [zoom>=16] { line-width: 4; }
    }
    [class='main'][zoom>=14] {
      line-color: #fff;
      [zoom>=14] { line-width: 4; }
	  [zoom>=15] { line-width: 6; }
      [zoom>=17] { line-width: 15; }
    }
  }

  // fill/inlines
  ::fill['mapnik::geometry_type'=2][zoom>=9] {
    [class='main'] {
      line-color: @darkblue;
      [zoom>=9] { line-width: 0.15; }
	  [zoom>=11] { line-width: 0.35; }
      [zoom>=12] { line-width: 0.40; }
      [zoom>=13] { line-width: 0.75; }
      [zoom>=14] { line-width: 1.25; }
	  [zoom>=15] { line-width: 3; }
      [zoom>=16] { line-width: 5; }
    }
    [class='street'][zoom>=11],
    [class='street_limited'][zoom>=11] {
      	line-color: @darkblue;
		line-width: 0.10;
        [zoom>=13] { line-width: 0.25; }
		[zoom>=14] { line-width: 0.35; }
		[zoom>=16] { line-width: 1.5; }
    }
  }
}

#road['mapnik::geometry_type'=2][zoom>=10] {
  [class='minor_rail'][zoom>13],
  [class='major_rail'] {
      line-color: @red;
      line-dasharray: 3,1;
      line-width: 0.25;
      line-cap: round;
      [zoom>=13] { line-width: 0.5; }
      [zoom>=16] { line-width: 1;  line-dasharray: 6,2; }
      [zoom>=17] { line-width: 1.5; line-dasharray: 7,3; }
      [zoom>=18] { line-width: 1.75; line-dasharray: 8,4; }
  }
}
