<?php

class datasourcerecipe_page extends SectionDatasource
{
    public $dsParamROOTELEMENT = 'recipe-page';
    public $dsParamORDER = 'desc';
    public $dsParamPAGINATERESULTS = 'no';
    public $dsParamLIMIT = '20';
    public $dsParamSTARTPAGE = '1';
    public $dsParamREDIRECTONEMPTY = 'no';
    public $dsParamREDIRECTONFORBIDDEN = 'no';
    public $dsParamREDIRECTONREQUIRED = 'yes';
    public $dsParamREQUIREDPARAM = '$name';
    public $dsParamPARAMOUTPUT = array(
        'system:id',
        'name',
        'image-description',
        'slug'
    );
    public $dsParamSORT = 'system:id';
    public $dsParamHTMLENCODE = 'no';
    public $dsParamASSOCIATEDENTRYCOUNTS = 'no';

    public $dsParamFILTERS = array(
        '26' => '{$name}',
    );

    public $dsParamINCLUDEDELEMENTS = array(
        'name',
        'image',
        'image-description',
        'slug'
    );

    public function __construct($env = null, $process_params = true)
    {
        parent::__construct($env, $process_params);
        $this->_dependencies = array();
    }

    public function about()
    {
        return array(
            'name' => 'Recipe Page',
            'author' => array(
                'name' => 'Karim MOREL',
                'website' => 'http://localhost:8888/monocle-recipes',
                'email' => 'karim-morel@outlook.fr'),
            'version' => 'Symphony 2.7.10',
            'release-date' => '2020-03-13T14:35:48+00:00'
        );
    }

    public function getSource()
    {
        return '7';
    }

    public function allowEditorToParse()
    {
        return true;
    }

    public function execute(array &$param_pool = null)
    {
        $result = new XMLElement($this->dsParamROOTELEMENT);

        try {
            $result = parent::execute($param_pool);
        } catch (FrontendPageNotFoundException $e) {
            // Work around. This ensures the 404 page is displayed and
            // is not picked up by the default catch() statement below
            FrontendPageNotFoundExceptionHandler::render($e);
        } catch (Exception $e) {
            $result->appendChild(new XMLElement('error',
                General::wrapInCDATA($e->getMessage() . ' on ' . $e->getLine() . ' of file ' . $e->getFile())
            ));
            return $result;
        }

        if ($this->_force_empty_result) {
            $result = $this->emptyXMLSet();
        }

        if ($this->_negate_result) {
            $result = $this->negateXMLSet();
        }

        return $result;
    }
}