<?php

class Solution {

    /**
     * @param array[] $nums
     * @return int
     */
    function maxProductDifference(array $nums): int {
        sort($nums);

        /** @var int $counter */
        $counter = count($nums);

        $n1 = $nums[$counter-1] * $nums[$counter-2];
        $n2 = $nums[0] * $nums[1];

        return $n1 - $n2;
    }
}