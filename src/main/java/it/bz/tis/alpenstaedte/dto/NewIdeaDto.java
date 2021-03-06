package it.bz.tis.alpenstaedte.dto;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.codehaus.jackson.annotate.JsonCreator;
import org.codehaus.jackson.annotate.JsonProperty;
import org.springframework.roo.addon.javabean.RooJavaBean;

@RooJavaBean
public class NewIdeaDto {
	

	public NewIdeaDto() {
	}
	
	@JsonCreator
	public NewIdeaDto(@JsonProperty("projectName") String projectName,
			@JsonProperty("projectDesc") String projectDesc,
			@JsonProperty("topics") Set<TopicDto> topics,
			@JsonProperty("fundings") List<FundingDto> fundings,
			@JsonProperty("budget") Integer budget,
			@JsonProperty("objectives") String objectives,
			@JsonProperty("outputs") String outputs,
			@JsonProperty("measures") String measures,
			@JsonProperty("target") String target) {
		super();
		this.projectName = projectName;
		this.projectDesc = projectDesc;
		this.topics = topics;
		this.fundings = fundings;
		this.budget = budget;
		this.objectives = objectives;
		this.outputs = outputs;
		this.measures = measures;
		this.target = target;
	}
	private String uuid;
	private String projectName;
	private String projectDesc;
	private Set<TopicDto> topics;
	private List<FundingDto> fundings;
	private Integer numberOfOrganisazions;
	private Date updated_on;
	private String objectives;
	private String outputs;
	private String measures;
	private String target;
	private Integer budget;
	private String status;

}
