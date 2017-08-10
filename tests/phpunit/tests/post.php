<?php

/**
 * test wp-includes/post.php
 *
 * @group post
 */
class Tests_Post extends WP_UnitTestCase
{
    public function test_parse_post_content_single_page()
    {
        global $multipage, $pages, $numpages;
        $post_id = self::factory()->post->create(array('post_content' => 'Page 0'));
        $post = get_post($post_id);
        setup_postdata($post);
        $this->assertEquals(0, $multipage);
        $this->assertCount(1, $pages);
        $this->assertEquals(1, $numpages);
        $this->assertEquals(array('Page 0'), $pages);
    }
}
