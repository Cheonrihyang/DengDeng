-- faq 추가 전 세팅
set foreign_key_checks=0;
delete from faq;
alter table faq auto_increment = 1;
set foreign_key_checks=1;


-- faq 추가
-- 1번카테고리 (회원가입/로그인)
insert into faq(faq_title,faq_content,iqc_no) values
('회원가입시 혜택이 있나요?','회원 가입시 기본 적립금과 다양한 쿠폰이 주어집니다. 상기 적립금과 혜택은 언제든지 변경될 수 있습니다.', 1),
('회원ID와 패스워드를 잊어버렸어요.','ID와 Password를 잊어버렸을 경우에는, 쇼핑몰 상단의 [로그인] 버튼을 클릭하신후, 하단에 [비밀번호분실]버튼을 클릭하세요.', 1),
('회원탈퇴는 어떻게 하나요?','로그인 하신 후 상단의 회원정보수정을 클릭해주세요. 스크롤을 내려주시면 회원탈퇴 버튼이 있습니다.^^', 1),
('회원정보변경은 어떻게 하나요?','로그인 하신 후  "내정보수정"에서 하실 수 있습니다.', 1);

-- 2번카테고리(주문/결제)
insert into faq(faq_title,faq_content,iqc_no) values
('적립금은 어떻게 사용하나요?','상품 주문시, 결제창에서 적립금을  원하시는 사용금액 입력후 결제해주시면 됩니다. *적립금은 마이페이지에서 확인 가능합니다.', 2),
('결제방법에는 어떤 종류가 있나요?','무통장입금, 신용카드, 모바일, 실시간 계좌이체, 네이버페이, 적립금 등이 있습니다.', 2),
('쿠폰은 어떻게 사용하나요?','보유하신 쿠폰은 결제 전 적용이 가능합니다. 사용가능한 쿠폰은 주문시 쿠폰목록에서 선택이 가능하지만 상품, 구매금액에 따라 쿠폰 사용이 어려울 수 있습니다.', 2);

-- 3번카테고리(배송문의)
insert into faq(faq_title,faq_content,iqc_no) values
('배송기간은 어떻게 되나요?','배송일은, 입금확인 완료 시점기준으로 주말,공휴일제외 평균 1~7정도 소요됩니다.', 3),
('해외배송도 가능한가요?','현재 해외배송은 지원하지 않고 있습니다. 추후 해외배송 진행시 별도 공지해 드리겠습니다.', 3),
('배송중으로 확인되는데 배송추적이 되지 않아요.','배송중으로 확인되더라도 물류센터에서 출고가 된 시점이 아닌 택배사에서 배송정보를 입력한 시점부터 배송추적이 가능하게 됩니다.', 3);

-- 4번카테고리(취소/교환/반품)
insert into faq(faq_title,faq_content,iqc_no) values
('택배 반품 예약은 어떻게 하면 되나요?','반품 택배 예약은 받으신 택배사로 전화나 인터넷 사이트에서 직접 예약하시면 됩니다.', 4),
('교환&반품시 배송비는 얼마인가요?','기본 반품 택배비는 왕복 기준 한박스당 6천원입니다. 박스가 여러개 일 경우 반품 배송비는 달라질 수 있습니다.', 4),
('주문한상품이 품절되었다는 연락을 받았어요.','품절상품으로 인한 환불시 발생하는 배송비, 수수료는 저희 부담으로, 교환이나 환불 가능하십니다.', 4),
('배송준비중인데 주문을 취소하고 싶어요.','"배송준비중"일 경우 이미 물류센터로 넘어간 경우라서 직접 주문취소가 불가능하며, 원하지 않으실 경우 반품으로 처리하셔야 합니다.', 4);

select * from faq;