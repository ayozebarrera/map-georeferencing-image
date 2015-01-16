#hillshade {
	::1[zoom<=14],
  	::2[zoom=15],
  	::3[zoom=16],
  	::4[zoom=17] {
    	comp-op: hard-light;
    	polygon-clip: false;
    	[class='full_shadow'] {
      		polygon-fill: #4ea652;
      		polygon-opacity: 0.06;
      	[zoom=15] { polygon-opacity: 0.04; }
      	[zoom=16] { polygon-opacity: 0.02; }
      	[zoom=17] { polygon-opacity: 0.01; }
    	}
    	[class='medium_shadow'] {
      		polygon-fill: #28552a;
      		polygon-opacity: 0.06;
      		[zoom=15] { polygon-opacity: 0.04; }
      		[zoom=16] { polygon-opacity: 0.02; }
      		[zoom=17] { polygon-opacity: 0.01; }
    	}
    	[class='medium_highlight'] {
      		polygon-fill: #b2dbb4;
      		polygon-opacity: 0.4;
      		[zoom=15] { polygon-opacity: 0.3; }
      		[zoom=16] { polygon-opacity: 0.2; }
      		[zoom=17] { polygon-opacity: 0.1; }
    	}
    	[class='full_highlight'] {
      		polygon-fill: #fcfcd1 ;
      		polygon-opacity: 0.4;
     	 	[zoom=15] { polygon-opacity: 0.3; }
      		[zoom=16] { polygon-opacity: 0.2; }
      		[zoom=17] { polygon-opacity: 0.1; }
    }
  }
  ::2[zoom=15] { image-filters: agg-stack-blur(2,2); }
  ::3[zoom=16] { image-filters: agg-stack-blur(4,4); }
  ::4[zoom=17] { image-filters: agg-stack-blur(8,8); }
}