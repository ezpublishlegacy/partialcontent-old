{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{* Placement code for content/edit *}

{* Example code of how to do limitation placement
   {let name=Choice
        list_node1=first_set($:assigned_remote_map[2].parent_node,0)
        list_node2=first_set($:assigned_remote_map[3].parent_node,31)}

   <input type="hidden" name="MainNodeID" value="26" />

   <input type="hidden" name="SetPlacementNodeIDArray[1]" value="26" />
   <input type="hidden" name="SetRemoteIDOrderMap[1]" value="1" />
   <input type="hidden" name="SetRemoteIDFieldMap[1]" value="9" />

   <select name="SetPlacementNodeIDArray[2]">
   {section loop=hash(0,"None",28,"Feature",29,"Some place",30,"Another place")}
     <option value="{$:key}" {if eq($:list_node1,$:key)}selected="selected"{/if}>{$:item}</option>
   {/section}
   </select>
   <input type="hidden" name="SetRemoteIDOrderMap[2]" value="0" />
   <input type="hidden" name="SetRemoteIDFieldMap[2]" value="1" />

   <select name="SetPlacementNodeIDArray[3]">
   {section loop=hash(0,"None",31,"1",32,"2")}
     <option value="{$:key}" {if eq($:list_node2,$:key)}selected="selected"{/if}>{$:item}</option>
   {/section}
   </select>
   <input type="hidden" name="SetRemoteIDOrderMap[3]" value="1" />
   <input type="hidden" name="SetRemoteIDFieldMap[3]" value="4" />

   {/let}

*}


{default exclude_remote_assignments=false()}
    {let name=Node exclude_remote_assignments=$:exclude_remote_assignments
                   sort_fields=hash(2,"Published"|i18n("design/standard/content/edit"),3,"Modified"|i18n("design/standard/content/edit"),4,"Section"|i18n("design/standard/content/edit"),5,"Depth"|i18n("design/standard/content/edit"),9,"Name"|i18n("design/standard/content/edit"),6,"Class identifier"|i18n("design/standard/content/edit"),7,"Class name"|i18n("design/standard/content/edit"),8,"Priority"|i18n("design/standard/content/edit"))
                   has_top_levels=false()}
    {section show=is_set( $assigned_node_array )}
    {section loop=$assigned_node_array}
         {if $Node:item.parent_node|le( 1 )}
             {set has_top_levels=true()}
         {/if}
    {/section}
    {/section}

    <table class="list" width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <th width="60%">{"Location"|i18n("design/standard/content/edit")}</th>
        <th colspan="1">{"Sort by"|i18n("design/standard/content/edit")}</th>
        <th colspan="2">{"Ordering"|i18n("design/standard/content/edit")}</th>
    {if $:has_top_levels|not}
        <th colspan="1">{"Main"|i18n("design/standard/content/edit")}</th>
        <th colspan="1">{"Move"|i18n("design/standard/content/edit")}</th>
        <th colspan="1">{"Remove"|i18n("design/standard/content/edit")}</th>
    {/if}
    </tr>
    {let existingParentNodes=$object.parent_nodes}
    {section show=is_set( $assigned_node_array )}
    {section loop=$assigned_node_array sequence=array(bglight,bgdark)}
    {section-exclude match=$:item.parent_node|le(0)}
    {section-exclude match=and($:exclude_remote_assignments,$:item.remote_id|gt(0))}
    {let parent_node=$Node:item.parent_node_obj}
    <tr>
        <td class="{$Node:sequence}">
	{switch match=$Node:parent_node.node_id}
	{case match=1}
	Top node
	{/case}
	{case}
        {section name=Path loop=$Node:parent_node.path}
	{$Node:Path:item.name|wash} /
	{/section}
        {$Node:parent_node.name|wash}
	{/case}
	{/switch} / {$object.name|wash}
        </td>
        <td class="{$Node:sequence}">
          <select name="SortFieldMap[{$Node:item.id}]">
          {section name=Sort loop=$Node:sort_fields}
            <option value="{$Node:Sort:key}" {if eq($Node:Sort:key,$Node:item.sort_field)}selected="selected"{/if}>{$Node:Sort:item}</option>
          {/section}
          </select>
        </td>
        <td class="{$Node:sequence}" width="25">
	<nobr><img src={"asc-transp.gif"|ezimage} alt="Ascending" /><input type="radio" name="SortOrderMap[{$Node:item.id}]" value="1" {if eq($Node:item.sort_order,1)}checked="checked"{/if} /></nobr>
	</td>
        <td class="{$Node:sequence}" width="25">
	<nobr><img src={"desc-transp.gif"|ezimage} alt="Descending" /><input type="radio" name="SortOrderMap[{$Node:item.id}]" value="0" {if eq($Node:item.sort_order,0)}checked="checked"{/if} /></nobr>
        </td>

        {if $:has_top_levels|not}
        <td class="{$Node:sequence}" align="right">
            <input type="radio" name="MainNodeID" {if eq($main_node_id,$Node:item.parent_node)}checked="checked"{/if} value="{$Node:item.parent_node}" />
        </td>
        {/if}

        {if $:has_top_levels|not}
        <td class="{$Node:sequence}" align="right">
            {switch match=$Node:item.parent_node}
            {case in=$Node:existingParentNodes}
             <input type="image" name="{concat('MoveNodeID_',$Node:item.parent_node)}" src={"move.gif"|ezimage} value="{$Node:item.parent_node}"  />
            {/case}
            {case}
              {if $Node:item.from_node_id|gt(0)}
                <input type="image" name="{concat('MoveNodeID_',$Node:item.parent_node)}" src={"move.gif"|ezimage} value="{$Node:item.parent_node}"  />
              {else}
              {/if}
             {/case}
            {/switch}
        </td>
        <td class="{$Node:sequence}" align="right">
{*     {if eq($Node:item.parent_node,$main_node_id)|not}*}
            <input type="image" name="{concat('RemoveNodeID_',$Node:item.parent_node)}" src={"trash.png"|ezimage} value="{$Node:item.parent_node}"  />
{*     {/if}*}
        </td>
        {/if}

    </tr>
    {/let}
    {/section}
    {/section}
    {/let}
 </table>
{if $:has_top_levels}
    <input type="hidden" name="MainNodeID" value="{$main_node_id}" />
{/if}
{if $:has_top_levels|not}
    <div align="left" class="buttonblock">
        <input class="button" type="submit" name="BrowseNodeButton" value="{'Add locations'|i18n('design/standard/content/edit')}" />
    </div>
{/if}

    {/let}
{/default}
