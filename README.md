# README

## CRUDテンプレート使用
`rails g scaffold *Project Title*`

## Gemfile
追加  
`gem 'cocoon'`  
`gem 'jquery-rails'`


## javascripts/application.js
追加  
`//= require jquery`  
`//= require cocoon`  
　*依存関係のため追加順番この通りにしないとダメ

## Model
アソシーエーションの許容範囲の関係を設定  
例）全設定  
`accepts_nested_attributes_for`  
　`:子要素名, reject_if: :all_blank, allow_destroy: true`



## Controller
ストロングパラメータの設定  
例)  
`params.require(:project)`  
　`.permit(:name, :description,`  
　　`tasks_attributes: [:id, :description, :done, :_destroy,`      
　　　`items_attributes: [:id, :description, :_destroy]`  
　　　　`])`
* _destroyも入れておく必要がある
* 子要素は親要素のストロングパラメーターに含めて記述できる

## View
必須項目
* 　_{model}_fields.html.erbというパーシャル名が固定
* 　パーシャルへはnested-fieldsというclassを設定する
* 　link_to_add_attributesの前にlinksというclassを設定する