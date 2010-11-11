<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">  
<head>
{include file=$smarty.const.ALMIDONDIR|cat:"/tpl/meta.tpl"}
<title>{if $title}{$title}{else}{$smarty.const.ALM_TITLE_INDEX}{/if} - {$smarty.session.alm_user} @ {$smarty.const.DOMAIN}</title>
{include file=$smarty.const.ALMIDONDIR|cat:"/tpl/js.tpl"}
{include file=$smarty.const.ALMIDONDIR|cat:"/tpl/css.tpl"}
</head>
<body>
<a href="./"{if ($cur_section=='inicio' || $cur_section|trim == '') && !$object} class="stay"{/if}>{$smarty.const.ALM_HOME}</a> |&nbsp;
{if $sectionlinks}
  {if $sectionlinks|@count >= 1}
    <a href="{$smarty.const.SSL_URL}/"{if $cur_section=='inicio' || $cur_section|trim == ''} class="stay"{/if}>Inicio</a> | &nbsp;{foreach key=key item=item from=$sectionlinks name=i}<a href="{$smarty.const.SSL_URL}/{$key}/{$item.index}"{if $cur_section==$key} class="stay"{/if}>{$item.label}</a>{if !$smarty.foreach.i.last} | &nbsp;{/if}{/foreach}<hr size="1 noshade="noshade" />
  {/if}
  {if $adminlinks}
    {foreach key=key item=item from=$adminlinks name=j}<a href="{$smarty.const.SSL_URL}/{$cur_section}/{$key}"{if ($cur_page==$key)||($object==$key)} class="stay"{/if}>{$item}</a>{if !$smarty.foreach.j.last} | &nbsp;{/if}{/foreach}
  <hr size="1" noshade="noshade" />
  {/if}
{elseif $adminlinks}
  {foreach key=key item=item from=$adminlinks name=i}<a href="{$key}"{if ($cur_page==$key)||($object==$key)} class="stay"{/if}>{$item}</a>{if !$smarty.foreach.i.last} | {/if}{/foreach}
  {if $smarty.session.alm_user} &nbsp; [ {$smarty.session.alm_user} ]{/if}
  <hr size="1" noshade="noshade" />
{/if}
<h1>{$title|default:""}</h1>
