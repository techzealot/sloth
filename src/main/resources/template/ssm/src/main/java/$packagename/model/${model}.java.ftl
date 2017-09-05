package ${packageName}.model;

import javax.annotation.Generated;

@Generated(
	value = {
	"https://github.com/coolcooldee/sloth",
	"sloth version:1.0"
	},
	comments = "This class is generated by sloth"
)
public class ${upperFirstLetterName} {

	<#list columns as column>
	<#if column.remark?? && column.remark?length gt 1 >
	/**
	 * ${column.remark}
	 */
	</#if>
	private ${column.type} ${column.lowerFirstLetterName};
	</#list>

	<#list columns as column>
	public ${column.type} get${column.upperFirstLetterName}() {
		return ${column.lowerFirstLetterName};
	}

	public void set${column.upperFirstLetterName}(${column.type} ${column.lowerFirstLetterName}) {
		this.${column.lowerFirstLetterName} = ${column.lowerFirstLetterName};
	} 
	</#list>
}
