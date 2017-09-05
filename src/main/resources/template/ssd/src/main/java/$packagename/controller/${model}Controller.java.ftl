package ${packageName}.controller;

import java.util.*;
import ${packageName}.model.${upperFirstLetterName};
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import ${packageName}.service.${upperFirstLetterName}Service;
import ${packageName}.common.Page;
import springfox.documentation.swagger2.annotations.EnableSwagger2;
import javax.annotation.Generated;

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
	public String test() {
		return "success";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public void save(@ModelAttribute ${upperFirstLetterName} ${lowerFirstLetterName}) {
		${lowerFirstLetterName}Service.save(${lowerFirstLetterName});
	}

	@RequestMapping(value = "/delete/{${primaryKey}}", method = RequestMethod.POST)
	public void  delete(@PathVariable ${primaryKeyType} ${primaryKey}) {
		${lowerFirstLetterName}Service.deleteBy${upperFirstLetterPrimaryKey}(${primaryKey});
	}

	@RequestMapping(value = "/view/{${primaryKey}}", method = RequestMethod.GET)
	public ${upperFirstLetterName}  view(@PathVariable ${primaryKeyType} ${primaryKey}) {
		return ${lowerFirstLetterName}Service.getBy${upperFirstLetterPrimaryKey}(${primaryKey});
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
	public void update(@ModelAttribute ${upperFirstLetterName} ${lowerFirstLetterName}) {
		${lowerFirstLetterName}Service.update(${lowerFirstLetterName});
	}

	@RequestMapping(value = "/count", method = RequestMethod.GET)
	public Long  count() {
		return ${lowerFirstLetterName}Service.count();
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public List<${upperFirstLetterName}> list() {
		return ${lowerFirstLetterName}Service.list();
	}

	@RequestMapping(value = "/page", method = RequestMethod.GET)
	public Page<${upperFirstLetterName}> page(@RequestParam int pageNo, @RequestParam int pageSize) {
		return ${lowerFirstLetterName}Service.page(pageNo, pageSize);
	}


}
