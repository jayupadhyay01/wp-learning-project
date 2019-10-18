<?php
/*
 * Template Name: JS Learning Template
 */
get_header(); ?>


	<div class="wrap">

		<div id="primary" class="content-area">
            <h2>First Example</h2>

			<input type='text' name='fname' class='textinput' id='textinput' style="width: 500px">

            <div class='displaytext'><h4 id='displaytext'>Please Type it will display here</h4></div>
            <h3>Example 2</h3>
            <button id="btn-text-show" class="button" onclick="texthideshow()">Show</button>
            <button id="btn-text-hide" class="button" onclick="texthideshow()">Hide</button>
        </div>




    </div>

<?php
get_footer();