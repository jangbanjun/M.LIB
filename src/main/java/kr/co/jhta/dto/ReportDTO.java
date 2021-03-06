package kr.co.jhta.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ReportDTO {
	long reportId;
	long replyId;
	long articleId;
	long bookReviewId;
	String details;
}
