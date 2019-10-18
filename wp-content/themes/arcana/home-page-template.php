<?php
/*
 * Template Name: Home Page Template
 */
get_header();
?>
<!-- Banner-->
    <section id="banner" style="background-image:url('<?php the_post_thumbnail_url(); ?>');">
        <header>
            <h2>Arcana: <em><?php the_cfc_field('headergroup', 'header-tag-line'); ?></em></h2>
            <a href="<?php the_cfc_field('headergroup', 'header-button-link'); ?>" class="button">Learn More</a>
        </header>
    </section>
    <!-- Highlights -->
    <section class="wrapper style1">
        <div class="container">
            <div class="row gtr-200">
	            <?php
	            foreach( get_cfc_meta( 'homepage_testimonial_sections' ) as $key => $value ){
		            ?>
                <section class="col-4 col-12-narrower">
                    <div class="box highlight">
                        <i class="icon solid major"><img src="<?php the_cfc_field( 'homepage_testimonial_sections','testimonial-image', false, $key ); ?>" width="105px" height="105px" style="border-radius: 50%;" /></i>
                        <h3><?php the_cfc_field( 'homepage_testimonial_sections','testimonial-title', false, $key ); ?></h3>
                        <p><?php the_cfc_field( 'homepage_testimonial_sections','testimonial-description', false, $key ); ?></p>
                    </div>
                </section>
<?php
	            }
	            ?>
            </div>
        </div>
    </section>

    <!-- Gigantic Heading -->
    <section class="wrapper style2">
        <div class="container">
            <header class="major">
                <h2>A gigantic heading you can use for whatever</h2>
                <p>With a much smaller subtitle hanging out just below it</p>
            </header>
        </div>
    </section>

    <!-- Posts -->
    <section class="wrapper style1">
        <div class="container">
            <div class="row">
                <section class="col-6 col-12-narrower">
                    <div class="box post">
                        <a href="#" class="image left"><img src="images/pic01.jpg" alt="" /></a>
                        <div class="inner">
                            <h3>The First Thing</h3>
                            <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                        </div>
                    </div>
                </section>
                <section class="col-6 col-12-narrower">
                    <div class="box post">
                        <a href="#" class="image left"><img src="images/pic02.jpg" alt="" /></a>
                        <div class="inner">
                            <h3>The Second Thing</h3>
                            <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                        </div>
                    </div>
                </section>
            </div>
            <div class="row">
                <section class="col-6 col-12-narrower">
                    <div class="box post">
                        <a href="#" class="image left"><img src="images/pic03.jpg" alt="" /></a>
                        <div class="inner">
                            <h3>The Third Thing</h3>
                            <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                        </div>
                    </div>
                </section>
                <section class="col-6 col-12-narrower">
                    <div class="box post">
                        <a href="#" class="image left"><img src="images/pic04.jpg" alt="" /></a>
                        <div class="inner">
                            <h3>The Fourth Thing</h3>
                            <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>

    <!-- CTA -->
    <section id="cta" class="wrapper style3">
        <div class="container">
            <header>
                <h2>Are you ready to continue your quest?</h2>
                <a href="#" class="button">Insert Coin</a>
            </header>
        </div>
    </section>

<?php
get_footer();


