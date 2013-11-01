<?php  
class ControllerCommonPagination extends Controller {
    public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
        
        
        
        if (isset($_GET["sort"])) $sort = $_GET["sort"]; else $sort = 'p.date_added';
        if (isset($_GET["order"])) $order = $_GET["order"]; else $order = 'DESC';
        if (isset($_GET["category_id"])) $order = $_GET["category_id"]; else $category_id = 0;
        if (isset($_GET["c"])) $category = $_GET["c"]; else $category = 0;
        if (isset($_GET["filter_name"])) $filter_name = $_GET["filter_name"]; else $filter_name = '';
        if (isset($_GET["filter_tag"])) $filter_tag = $_GET["filter_tag"]; else $filter_tag = '';
        if (isset($_GET["filter_description"])) $filter_description = $_GET["filter_description"]; else $filter_description = '';
        if (isset($_GET["filter_sub_category"])) $filter_sub_category = $_GET["filter_sub_category"]; else $filter_sub_category = '';
        if (isset($_GET["filter_manufacturer_id"])) $filter_manufacturer_id = $_GET["filter_manufacturer_id"]; else $filter_manufacturer_id = '';
        if (isset($_GET["special"])) $special = $_GET["special"]; else $special = '0';
        $this->data['special_block'] = $module = $this->getChild('module/latest', array(
            'special' => $special,
            'limit' => 20,
            'image_width' => 185,
            'category' => $category,
            'start' => 20*($_GET["p"]-1),
            'sort' => $sort,
            'order' => $order,
            'filter_name' => $filter_name,
            'filter_tag' => $filter_tag,
            'filter_description' => $filter_description,
            'filter_sub_category' => $filter_sub_category,
            'filter_manufacturer_id' => $filter_manufacturer_id
        ));
        

        

		$this->data['heading_title'] = $this->config->get('config_title');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/pagination.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/pagination.tpl';
		} else {
			$this->template = 'default/template/common/pagination.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
										
		$this->response->setOutput($this->render());
	}
}
?>