<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

use Phpml\Classification\SVC;
use Phpml\SupportVectorMachine\Kernel;

class Svmlib
{

    public function process($training, $label_training, $testing)
    {
        $classifier = new SVC(Kernel::RBF, $cost = 10000);
        $classifier->train($training, $label_training);

        return $classifier->predict($testing);
    }

}
