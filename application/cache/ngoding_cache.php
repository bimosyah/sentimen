<?php

#tranpose
$matrix_t = [];
foreach ($matrix as $key => $value) {
    foreach ($value as $k => $v) {
        $matrix_t[$k][$key] = $v;
    }
}


 ?>