<!-- MODULE Show Categories -->
<section class="showcategories">
  {if $showHeading}
  	<h1><span>Categories</span></h1>
  {/if}
	{if isset($categories) AND $categories}
		{foreach from=$categories item=category name=homeCategories}
			{assign var='categoryLink' value=$link->getcategoryLink($category.id_category, $category.link_rewrite)}
			{assign var='imageLink' value=$link->getCatImageLink($category.link_rewrite, $category.id_image, $imageType)}
			<div class="show_category">
				<a href="{$categoryLink}">
					<img src="{$imageLink}" alt="{$category.name|escape:'htmlall':'UTF-8'}" title="{$category.name|escape:'htmlall':'UTF-8'}" />
					<span class="category_name">{$category.name|truncate:21}</span>
				</a>
			</div>
		{/foreach}
	{else}
		<p>{l s='No categories found' mod='showcategories'}</p>
	{/if}
</section>
<!-- /MODULE Show Categories -->