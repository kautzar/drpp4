<?php

return array(
    'id' => 'general_question',
    'types' => array("charity_faq"),
    'title' => __('General Question Position', 'charity'),
    'priority' => 'high',
    'template' => array(
        array(
            'type' => 'radiobutton',
            'name' => 'question-position',
            'label' => __('Choose the position of the question as left or right', 'charity'),
            'items' => array(
                array(
                    'value' => 'left',
                    'label' => __('Left', 'charity')
                ),
                array(
                    'value' => 'right',
                    'label' => __('Right', 'charity')
                )
            ),
            'default' => array(
                'left'
            )
        )
    )
);

/**
 * EOF
 */
