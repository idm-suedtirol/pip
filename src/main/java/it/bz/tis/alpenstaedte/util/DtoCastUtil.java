package it.bz.tis.alpenstaedte.util;

import it.bz.tis.alpenstaedte.Funding;
import it.bz.tis.alpenstaedte.Help;
import it.bz.tis.alpenstaedte.Idea;
import it.bz.tis.alpenstaedte.Organisazion;
import it.bz.tis.alpenstaedte.PipUser;
import it.bz.tis.alpenstaedte.Comment;
import it.bz.tis.alpenstaedte.Topic;
import it.bz.tis.alpenstaedte.dto.CommentDto;
import it.bz.tis.alpenstaedte.dto.FundingDto;
import it.bz.tis.alpenstaedte.dto.HelpDto;
import it.bz.tis.alpenstaedte.dto.NewIdeaDto;
import it.bz.tis.alpenstaedte.dto.OrganisazionDto;
import it.bz.tis.alpenstaedte.dto.TopicDto;
import it.bz.tis.alpenstaedte.dto.UniqueIdentifierDto;
import it.bz.tis.alpenstaedte.dto.UserDto;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class DtoCastUtil {

	public static DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");

	public static Set<TopicDto> cast(Set<Topic> preferredTopics) {
		Set<TopicDto> topics = new HashSet<TopicDto>();
		for (Topic topic:preferredTopics){
			TopicDto dto = cast(topic);
			topics.add(dto);
		}
		return topics;
	}

	public static TopicDto cast(Topic topic) {
		TopicDto dto = new TopicDto();
		dto.setName(topic.getName());
		dto.setColor(topic.getColor());
		dto.setUuid(topic.getUuid());
		return dto;
	}

	public static List<CommentDto> cast(List<Comment> comments) {
		List<CommentDto> dtos = new ArrayList<CommentDto>();
		for (Comment comment:comments){
			CommentDto commentDto = cast(comment);
			dtos.add(commentDto);
		}
		return dtos;
	}

	public static CommentDto cast(Comment comment) {
		CommentDto dto = new CommentDto();
		dto.setText(comment.getText());
		dto.setCreated_on(comment.getCreated_on());
		UserDto userDto = DtoCastUtil.cast(comment.getOwner()); 
		dto.setAuthor(userDto);
		dto.setBanned(comment.isBanned());
		dto.setUuid(comment.getUuid());
		for (PipUser user: comment.getLiker()){
			dto.getLiker().add(user.getUuid());
		}
		return dto;
	}

	public static UniqueIdentifierDto cast(String uuid) {
		UniqueIdentifierDto d = new UniqueIdentifierDto();
		d.setUuid(uuid);
		return d;
	}

	public static UserDto cast(PipUser user) {
		UserDto dto = new UserDto();
    	dto.setEmail(user.getEmail());
    	dto.setName(user.getName());
    	dto.setSurname(user.getSurname());
    	dto.setPhone(user.getPhone());
    	dto.setLanguageSkills(user.getLanguageSkills());
    	dto.setTopics(DtoCastUtil.cast(user.getPreferredTopics()));
    	dto.getOrganizations().add(DtoCastUtil.cast(user.getOrganisazions().get(0)));
		dto.setUuid(user.getUuid());
		dto.setActive(user.getActive());
		dto.setRole(user.getRole());
		if (user.getName()== null && user.getSurname() == null)
			dto.setName("Anonymous");
		return dto;
	}


	public static Set<OrganisazionDto> castOrgs(
			List<Organisazion> organisazions) {
		Set<OrganisazionDto> dtos = new HashSet<OrganisazionDto>();
		for (Organisazion org: organisazions) {
			OrganisazionDto dto = cast(org);
			dtos.add(dto);
		}
		return dtos;
	}

	public static OrganisazionDto cast(Organisazion org) {
		return new OrganisazionDto(org.getName(),org.getPic());
	}

	public static List<FundingDto> castFundings(Set<Funding> set) {
		List<FundingDto> fundings = new ArrayList<FundingDto>();
		for (Funding funding : set){
			FundingDto fundingDto = cast(funding);
			fundings.add(fundingDto);
		}
		return fundings;
	}

	public static FundingDto cast(Funding funding) {
		return new FundingDto(funding.getUuid(),funding.getUrl(), funding.getDescription(),funding.getDeadline(),funding.getCofinance());
	}

	public static List<UserDto> castUser(List<PipUser> users) {
		List<UserDto> dtos = new ArrayList<UserDto>();
		for(PipUser user:users){
			UserDto userDto = cast(user);
			dtos.add(userDto);
		}
		return dtos;
	}

	public static List<NewIdeaDto> castIdeaList(List<Idea> ideas) {
		List<NewIdeaDto> dtos = new ArrayList<NewIdeaDto>();
		for (Idea idea: ideas){
			NewIdeaDto dto = castReduced(idea);
			dtos.add(dto);
		}
		return dtos;
	}

	public static NewIdeaDto castReduced(Idea idea) {
		NewIdeaDto dto = new NewIdeaDto(idea.getName(), idea.getDescription(), null, null,null,null,null,null,null);
		dto.setUuid(idea.getUuid());
		dto.setNumberOfOrganisazions(idea.getFollower().size());
		dto.setUpdated_on(idea.getUpdated_on());
		dto.setTopics(DtoCastUtil.cast(idea.getTopics()));
		dto.setStatus(idea.getStatus().getName());
		return dto;
	}

	public static List<HelpDto> castHelps(List<Help> helps) {
		List<HelpDto> list = new ArrayList<HelpDto>();
		for (Help help : helps){
			HelpDto dto = cast(help);
			list.add(dto);
		}
		return list;
	}

	private static HelpDto cast(Help help) {
		HelpDto dto = new HelpDto();
		dto.setName(help.getName());
		dto.setCreated_on(help.getCreated_on());
		dto.setUuid(help.getUuid());
		return dto;
	}

}
