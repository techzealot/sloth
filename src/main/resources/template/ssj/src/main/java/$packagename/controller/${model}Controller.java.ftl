package ${packageName}.controller;

import ${packageName}.jooq.common.generated.tables.${jooqName};
import ${packageName}.jooq.common.generated.tables.records.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import ${packageName}.service.${upperFirstLetterName}Service;
import javax.annotation.Generated;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Generated(
	value = {
		"https://github.com/coolcooldee/sloth",
		"sloth version:1.0"
	},
	comments = "This class is generated by sloth"
)
@RestController
@EnableSwagger2
@RequestMapping(value = "/${lowerFirstLetterName}")
public class ${upperFirstLetterName}Controller {

	@Autowired
	private ${upperFirstLetterName}Service ${lowerFirstLetterName}Service;

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(@ModelAttribute ${jooqName}Record ${jooqName}Record) {
		return "success";
	}

	@RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
	public ${jooqName}Record  view(@PathVariable ${primaryKeyType} ${primaryKey}) {
		return ${lowerFirstLetterName}Service.getBy${upperFirstLetterPrimaryKey}(${primaryKey});
	}

	@RequestMapping(value = "/count", method = RequestMethod.GET)
	public Integer  count() {
		return ${lowerFirstLetterName}Service.count();
	}

}