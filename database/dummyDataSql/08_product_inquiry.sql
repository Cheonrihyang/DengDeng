-- product_inquiry 추가 전 세팅
set foreign_key_checks=0;
delete from product_inquiry;
alter table product_inquiry auto_increment = 1;
set foreign_key_checks=1;


-- product_inquiry 추가
insert into product_inquiry (pi_title, pi_content, pi_date, pi_answer, order_no, category_no) values 
('강아지 사료 문의드립니다', '이 사료는 어떤 강아지에게 적합한가요?', '2024-06-10 10:30:00', '우리 사료는 모든 강아지들에게 좋아요! 특히 민감한 소화기를 가진 강아지들도 많이 섭취해요.', 1, 3),
('강아지 사료 문의드립니다', '이 사료는 어떤 재료로 만들어졌나요?', '2024-06-10 12:15:00', '저희 강아지 사료는 자연 재료로 만들어져 있어요. 채소와 육류 함유량도 높아요.', 17, 3),
('강아지 사료 문의드립니다', '이 사료는 어떻게 저장해야 하나요?', '2024-06-10 14:00:00', '사료는 서늘하고 건조한 곳에 보관하면 좋아요. 물기와 직사광선을 피해주세요.', 33, 3),
('강아지 사료 문의드립니다', '이 사료의 포장 방식은 어떤가요?', '2024-06-10 15:45:00', '포장은 밀봉된 포장재로 보존력이 좋아요. 무리없이 오래 보관할 수 있어요.', 49, 3),
('강아지 사료 문의드립니다', '이 사료의 영양 성분을 알려주세요.', '2024-06-10 17:20:00', '저희 사료는 단백질과 지방을 적절하게 포함하고 있어요. 강아지의 건강에 좋습니다.', 65, 3),
('강아지 사료 문의드립니다', '이 사료는 알러지 반응이 있는 강아지에게도 안전한가요?', '2024-06-10 19:00:00', '대부분의 강아지들에게 적합한 사료이지만, 알러지가 있는 경우 사전에 수의사와 상담하는 것이 좋아요.', 81, 3),
('강아지 사료 문의드립니다', '이 사료는 어떤 맛이 있나요?', '2024-06-10 20:45:00', '닭, 소, 양 등 다양한 맛이 준비되어 있어요. 강아지의 취향에 맞게 선택하세요.', 97, 3),
('강아지 사료 문의드립니다', '이 사료는 어떤 연령의 강아지에게 적합한가요?', '2024-06-10 21:15:00', '주로 성장기와 성인 강아지들에게 추천되는 사료에요. 연령별로 맞춘 영양 성분이 들어가 있어요.', 113, 3),
('강아지 사료 문의드립니다', '이 사료의 가격 대비 품질이 어떤가요?', '2024-06-10 10:45:00', '우리 사료는 높은 품질을 유지하면서도 경제적인 가격대에 있어요. 가성비 좋은 제품입니다.', 129, 3),
('강아지 사료 문의드립니다', '이 사료는 어떤 건강 문제를 예방하는 데 도움이 되나요?', '2024-06-10 12:30:00', '치석 예방, 피부 건강, 소화 개선 등 여러 건강 문제에 도움을 줄 수 있어요.', 145, 3),
('강아지 사료 문의드립니다', '이 사료는 어떤 과정을 거쳐 만들어지나요?', '2024-06-10 14:15:00', '엄선된 원재료를 사용하여 철저한 위생 관리하에 제조되며, 품질 관리 과정을 거칩니다.', 161, 3),
('강아지 사료 문의드립니다', '이 사료의 추가 옵션 사항이 있나요?', '2024-06-10 16:00:00', '특별한 건강 보조 기능을 가진 제품이 있습니다. 개별적으로 문의해주세요.', 177, 3),
('강아지 사료 문의드립니다', '이 사료는 배달 서비스가 가능한가요?', '2024-06-10 17:45:00', '온라인 주문 시 배달 서비스를 제공하고 있습니다. 편리하게 구매하실 수 있어요.', 193, 3),
('강아지 사료 문의드립니다', '이 사료는 어떤 환경에서 가장 잘 어울릴까요?', '2024-06-10 19:30:00', '다양한 환경에 적합한 사료입니다. 실내, 야외 모두 강아지에게 잘 맞추어져 있습니다.', 209, 3),
('강아지 사료 문의드립니다', '이 사료의 구매 후 기대할 수 있는 점은 무엇인가요?', '2024-06-10 22:30:00', null, 225, 3),
('강아지 사료 문의드립니다', '이 사료의 성분을 보면 어떤 특징이 있나요?', '2024-06-10 23:00:00', null, 241, 3);


select * from product_inquiry;