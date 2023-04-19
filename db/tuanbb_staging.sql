--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Homebrew)
-- Dumped by pg_dump version 14.7 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT fk_rails_c3b3935057;
ALTER TABLE ONLY public.active_storage_variant_records DROP CONSTRAINT fk_rails_993965df05;
DROP INDEX public.index_users_on_reset_password_token;
DROP INDEX public.index_users_on_email;
DROP INDEX public.index_menus_on_article_id;
DROP INDEX public.index_mentioned_articles_on_other_article_id;
DROP INDEX public.index_mentioned_articles_on_article_id;
DROP INDEX public.index_featureds_on_article_id;
DROP INDEX public.index_active_storage_variant_records_uniqueness;
DROP INDEX public.index_active_storage_blobs_on_key;
DROP INDEX public.index_active_storage_attachments_uniqueness;
DROP INDEX public.index_active_storage_attachments_on_blob_id;
DROP INDEX public.index_action_text_rich_texts_uniqueness;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_pkey;
ALTER TABLE ONLY public.mentioned_articles DROP CONSTRAINT mentioned_articles_pkey;
ALTER TABLE ONLY public.featureds DROP CONSTRAINT featureds_pkey;
ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
ALTER TABLE ONLY public.active_storage_variant_records DROP CONSTRAINT active_storage_variant_records_pkey;
ALTER TABLE ONLY public.active_storage_blobs DROP CONSTRAINT active_storage_blobs_pkey;
ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT active_storage_attachments_pkey;
ALTER TABLE ONLY public.action_text_rich_texts DROP CONSTRAINT action_text_rich_texts_pkey;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.menus ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.mentioned_articles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.featureds ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.active_storage_variant_records ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.active_storage_blobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.active_storage_attachments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.action_text_rich_texts ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
DROP TABLE public.schema_migrations;
DROP SEQUENCE public.menus_id_seq;
DROP TABLE public.menus;
DROP SEQUENCE public.mentioned_articles_id_seq;
DROP TABLE public.mentioned_articles;
DROP SEQUENCE public.featureds_id_seq;
DROP TABLE public.featureds;
DROP SEQUENCE public.articles_id_seq;
DROP TABLE public.articles;
DROP TABLE public.ar_internal_metadata;
DROP SEQUENCE public.active_storage_variant_records_id_seq;
DROP TABLE public.active_storage_variant_records;
DROP SEQUENCE public.active_storage_blobs_id_seq;
DROP TABLE public.active_storage_blobs;
DROP SEQUENCE public.active_storage_attachments_id_seq;
DROP TABLE public.active_storage_attachments;
DROP SEQUENCE public.action_text_rich_texts_id_seq;
DROP TABLE public.action_text_rich_texts;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: action_text_rich_texts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: articles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.articles (
    id bigint NOT NULL,
    title character varying,
    standfirst text,
    published_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    slug character varying,
    published boolean,
    "position" integer,
    price character varying
);


--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: featureds; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.featureds (
    id bigint NOT NULL,
    article_id bigint,
    "position" integer DEFAULT 0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    kind character varying
);


--
-- Name: featureds_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.featureds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: featureds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.featureds_id_seq OWNED BY public.featureds.id;


--
-- Name: mentioned_articles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mentioned_articles (
    id bigint NOT NULL,
    other_article_id bigint,
    article_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: mentioned_articles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mentioned_articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: mentioned_articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mentioned_articles_id_seq OWNED BY public.mentioned_articles.id;


--
-- Name: menus; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.menus (
    id bigint NOT NULL,
    article_id bigint,
    "position" integer DEFAULT 0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    kind character varying,
    title character varying
);


--
-- Name: menus_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.menus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    role character varying,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: action_text_rich_texts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: featureds id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.featureds ALTER COLUMN id SET DEFAULT nextval('public.featureds_id_seq'::regclass);


--
-- Name: mentioned_articles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mentioned_articles ALTER COLUMN id SET DEFAULT nextval('public.mentioned_articles_id_seq'::regclass);


--
-- Name: menus id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: action_text_rich_texts; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.action_text_rich_texts VALUES (1, 'content', '<h1>ewdwde</h1><div><br></div><div>🍎 iPhone</div><div><br>fde<br>fe<br>fe<br><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSIyZ2lkOi8vdHVhbmJiL0FjdGl2ZVN0b3JhZ2U6OkJsb2IvMT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--ebe2b19a649f9bbe450d0a07c773745904a3290f" content-type="image/jpeg" url="http://localhost:7900/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--452adebd81e5b23248272a5026000aea4f9ffbcc/cola-0247.jpg" filename="cola-0247.jpg" filesize="167057" width="1800" height="1200" previewable="true" presentation="gallery" caption="my dwag"></action-text-attachment><br>fef<br>ef<br>ef<br>ef<br>efe<br>fe<br>fe<br>fe<br>fe<br>fef<br>ef<br>ef<br>ef<br>ef<br>efe<br>fe<br>fef<br>ef<br>fefe<br>fefe<br><br></div>', 'Article', 5, '2023-04-11 11:59:43.605174', '2023-04-11 12:15:50.708415');
INSERT INTO public.action_text_rich_texts VALUES (3, 'content', '<div><strong>PHÒNG KỸ THUẬT TUẤN BLACKBERRY<br></strong><br><br><strong>📌 XEM TRỰC TIẾP KỸ THUẬT VIÊN THAO TÁC THAY THẾ TRÊN MÁY<br></strong><strong><em>🔋 Pin Zin CHÍNH HÃNG cho iPhone<br>🔋 Pin Pisen và Pisen dung lượng cao cho iPhone<br>✅ Bảo hành 12 tháng 1 đổi 1 với những trường hợp lỗi Pin</em></strong><strong><br><br></strong><br></div><div><strong>⚡ ⚠ </strong><strong><em>Bảng Giá Các Loại Pin như sau :</em></strong><br><br><strong>🔋  Pin iPhone 4/4S 			giá		190k<br>🔋  Pin iPhone 5/5S 		        giá		250k<br>🔋  Pin iPhone 5SE 		        giá		350k<br>🔋  Pin iPhone 6/6S 			giá		290k<br>🔋  Pin iPhone 6 Plus/6S Plus 	giá		350k<br>🔋  Pin iPhone 7 				giá		350k<br>🔋  Pin iPhone 7 Plus 			giá		390k<br>🔋  Pin iPhone 8 				giá		450k<br>🔋  Pin iPhone 8 Plus 			giá		490k<br>🔋  Pin iPhone X 				giá		550k<br>🔋  Pin iPhone Xs/Xs Max 		giá		1.000k<br></strong><br><br><br></div><div><strong>⚡ ⚠ </strong><strong><em>Bảng Giá Các Loại Pin Pisen như sau :</em></strong><strong><br></strong><br></div><div><strong>🔋  Pin iPhone 6 				giá		400k</strong></div><div><br></div><div><strong>🔋  Pin iPhone 6S/6 Plus 		giá		450k</strong></div><div><br></div><div><strong>🔋  Pin iPhone 6S Plus			giá		500k</strong></div><div><br></div><div><strong>🔋  Pin iPhone 7 				giá		550k</strong></div><div><br></div><div><strong>🔋  Pin iPhone 7 Plus 			giá		650k</strong></div><div><br></div><div><strong>🔋  Pin iPhone X 				giá		850k<br>🔋  Pin iPhone Xs / Xs Max 		giá		1.000k<br></strong><br></div><div><strong><br></strong><strong><em>🔋  </em></strong><strong>Pin Dung lượng cao cộng thêm 100k<br><br>⚡ ⚠ Bảng Giá Các Loại Pin cho iPad :<br><br>🔋  Pin iPad 2/3/4	 			giá		750k<br>🔋  Pin iPad Air 1/2	 		giá		850k<br>🔋  Pin iPad Mini 1 			giá		650k<br>🔋  Pin iPad Mini 2 			giá		750k<br>🔋  Pin iPad Mini 3/4 			giá		850k<br>🔋  Pin iPad Pro 9.7 (2017) 		giá		950k<br>🔋  Pin iPad Pro 9.7 (2018) 		giá		1050k<br>🔋  Pin iPad Pro 10.5 			giá		1050k<br>🔋  Pin iPad Pro 12.9			giá		1300k<br><br>✔️ </strong><strong><em>CHÍNH SÁCH BẢO HÀNH TẠI TUẤN BLACKBERRY<br></em></strong><br></div><div><strong><br>- Bảo hành 1 ĐỔI 1 trong suốt 12 tháng bất kỳ lỗi gì về pin ♥</strong><br><strong>❗ 1. Pin chai 20% ➡ Đổi luôn pin mới.</strong><br><strong>❗ 2. Pin nhanh tụt vạch ➡ Đổi luôn pin mới.</strong><br><strong>❗ 3. Pin dùng nóng máy ➡ Đổi luôn pin mới.</strong><br><br><br><strong>Các dòng khác: vui lòng gọi trực tiếp đến cửa hàng</strong><br><strong>_________________________<br>   <br>BẢNG GIÁ ÉP KÍNH ĐIỆN THOẠI <br></strong><strong><em><br></em></strong><br></div><div><br></div><div><br><strong>📲 iPhone 5/5S/5SE			giá		250k<br>📲 iPhone 6					giá		350k<br>📲 iPhone 6s					giá		450k<br>📲 iPhone 6 Plus				giá		450k<br>📲 iPhone 6s Plus				giá		550k<br>📲 iPhone 7					giá		550k<br>📲 iPhone 7 Plus				giá		650k<br>📲 iPhone 8					giá		550k<br>📲 iPhone 8 Plus				giá		650k<br>📲 iPhone X					giá		1.300k<br>📲 iPhone XR					giá		1.300k<br>📲 iPhone XS					giá		1.300k<br>📲 iPhone Xs Max				giá		1.700k<br>📲 iPhone 11  				giá		1.800k<br>📲 iPhone 11 / 11 Pro    		giá		1.800k<br>📲 iPhone 11 Pro Max    		giá		2.000k<br><br></strong><strong><em>- Ép kính trực quan tại Phòng Kỹ Thuật</em></strong><strong><br></strong><strong><em>- Làm lấy ngay trong ngày. <br><br></em></strong><strong>_________________________<br><br>BẢNG GIÁ THAY KÍNH LƯNG ĐIỆN THOẠI  <br><br>📲 iPhone 8+					giá		800k<br>📲 iPhone X					giá		700k<br>📲 iPhone XR					giá		700k<br>📲 iPhone Xs					giá		700k<br>📲 iPhone Xs Max				giá		1.000k<br>📲 iPhone 11					giá		1.000k<br>📲 iPhone 11 PRO				giá		1.000k<br>📲 iPhone 11 PRO MAX		giá		1.500k<br><br>_________________________<br><br>BẢNG GIÁ THAY VỎ ĐIỆN THOẠI<br><br>📲 iPhone 5/5S/5SE			giá		450k<br>📲 iPhone 6/6s				giá		550k<br>📲 iPhone 6 Plus/6s Plus		giá		800k<br>📲 iPhone 7					giá		800k<br>📲 iPhone 7 Plus				giá		900k<br>📲 iPhone 8					giá		1.200k<br>📲 iPhone 8 Plus				giá		1.500k<br>📲 iPhone X					giá		1.500k<br>📲 iPhone Xs					giá		2.000k<br>📲 iPhone Xs Max				giá		3.500k<br><br>_________________________<br><br>BẢNG GIÁ ĐỘ VỎ ĐIỆN THOẠI<br><br>📲 iPhone 6/6s lên 8			giá		900k<br>📲 iPhone 6+/6s+ lên 8+		giá		950k<br>📲 iPhone 7 lên 8				giá		1.000k<br>📲 iPhone 7+ lên 8+			giá		1.050k<br></strong><br></div><div><br></div><div><strong>__________________________<br><br>BẢNG GIÁ ÉP KÍNH ĐIỆN THOẠI SAMSUNG<br><br>📲 SS G530					giá		400k<br>📲 SS J7 2016/J5 Prime		giá		550k<br>📲 SS J4/J600/J6+/J7+/S7		giá		650k<br>📲 SS A6+/A20/J4+			giá		750k<br>📲 SS A9 PRO/A10/Note5		giá		850k<br>📲 S7 EDGE/S8 				giá		1.400k<br>📲 SS S8 Plus				giá		1.600k<br>📲 SS S9 Plus				giá		1.800k<br>📲 SS Note 8/Note 9			giá		1.900k<br>📲 SS S10					giá		2.500k<br><br>__________________________<br><br>BẢNG GIÁ THAY NẮP LƯNG ĐIỆN THOẠI SAMSUNG</strong></div><div><strong><br><br>📲 SS S4					 	giá		200k<br>📲 SS A7 2016			 	giá		300k<br>📲 SS S7/Note5/S7e/S8		 	giá		400k<br>📲 SS A9 2018/Note7/S9+	 	giá		450k<br><br>_________________________<br></strong><br></div><div><strong> <br></strong><br></div><div><strong><br>SỮA CHỮA PHẦN MỀM ĐIỆN THOẠI<br><br></strong><br></div><div><strong><br>📲 Hỏng từ tâm hồn tới thể xác, bệnh viện nơi khác trả về.<br>📲 Quên mật khẩu vì trẻ nhỏ cài vào <br>📲 Máy bị chậm hoặc không thể cài đặt được các ứng dụng cần thiết cho công việc<br>📲 Nâng cấp 1 sim thành 2 sim - Tìm lại tài khoản đã bị lãng quên <br>📲 Chép dữ liệu từ máy này sang máy khác ...<br>📲 Hoặc bất cứ yêu cầu gì của Quý Khách chúng tôi đều đáp ứng đc hết 😋<br><br><br></strong><br></div><div><strong><br>👍<br> Làm trực quan, tại chỗ. Bảo mật tuyệt đối tẩt cả các dữ liệu của Quý Khách<br><br>👉Hãy đến Phòng Kỹ Thuật </strong><a href="https://www.facebook.com/hashtag/tu%E1%BA%A5nbb?source=feed_text&amp;__xts__%5B0%5D=68.ARDbQ3BQPCF15rOeW36qLPoDlqn4l1uuxctP2wWuxyV3xeB8Q8CcyW0kKoNZlBKTiWa83j_89SHWGAbx245bS9ijM3nI4W8nl7Gwo_WGPhWdNdEYAfp-418JBnwyDDHaE6jVPMIUjrX1XatLHnMdeCcIYedykmEpduJZ3W3zIdZVLWZlrSxDFM5g81cSxz3Eu_0xmBP339E&amp;__tn__=%2ANK-R"><strong>TuấnBB</strong></a><strong><br>Tầng 2 - 24 Yersin - Nha Trang - Khánh Hoà <br>0922.36.2345<br></strong><br></div>', 'Article', 2, '2023-04-11 12:26:55.460486', '2023-04-11 12:26:55.460486');
INSERT INTO public.action_text_rich_texts VALUES (4, 'content', '<div>Phụ Kiện<br><br></div><div><strong>MI HOME - STORE <br><br>Tivi 43 inch (4s): 8.200k<br>Xe NineBot Mini: 7.800k<br>Ván trượt Acton: 6.500k<br>Nồi chiên không dầu Xiaomi: 1.650k<br>Máy tạo bọt rửa tay tự động: 650k<br>Bộ tua vít Xiaomi: 450k<br>Ổ cắm điện 3 cổng usb 6 đầu: 450k<br><br><br>PHỤ KIỆN IPHONE - IPAD <br><br>- Tai nghe ZIN IPhone 7/ 7Plus/ X : 450k<br>- Tai nghe ZIN Iphone 6/ 6s : 250k<br>- Jack chuyển tai nghe Lightning ra 3.5 ZIN: 250k <br>- Tai Nghe AirPods 2 New : 3.500k <br>- Tai Nghe AirPods 2 New: 3.900 (sạc ko dây)<br>- Tai nghe Iphone: 100k<br><br>- Cáp HDMI Lightning IPhone Ipad ZIN : 950k <br>- Cáp Iphone: 80k<br>- Cáp Zin: 250k<br>- Cốc Iphone: 120k<br>- Cốc dẹt Iphone: 180k<br>- Cốc IPAD mini 5W: 150k<br>- Cốc IPAD: 250k<br><br>- Sim ghép: 120k<br><br>- Dán cường lực Full màn chống nhìn trộm KingKong ( đủ mã ): 170k <br>- Dán cường lực Full màn KingKong ( 6plus / 6splus / 7Plus / 8Plus / X / Xs / XsMax): 150k<br>- Dán cường lực Full Màn Hình 9D: 120k<br>- Dán cường lực Tốt : 40k <br>- Dán mặt sau các dòng Iphone : 20k <br>- Dán CL IPAD: 120k<br><br>- Ốp lưng TRONG chống ố Iphone : 60k <br>- Ốp lưng thời trang IPhone  : 90k -&gt; 190k<br>- Hộp điện thoại Iphone các dòng: 80k -&gt; 100k, hộp 7+ zin: 180k<br><br>PHỤ KIỆN SAMSUNG <br><br>- Cốc Samsung: 150k<br>- Cáp Samsung: 80k<br>- Cáp Type C: 60k<br><br>- Tai nghe: 120k<br>- Tai nghe S7: 160k<br>- Tai nghe S8: 180k<br><br>- Dán cường lực các dòng: 40k<br>- Dán cường lực full màn cong: 150k<br><br>- Ốp lưng thời trang các dòng: 60k -&gt; 180k<br>- Hộp điện thoại Samsung các dòng: 100k - 115k, hộp S8 zin: 350k<br><br><br>PIN SẠC DỰ PHÒNG CHÍNH HÃNG BẢO HÀNH 12 THÁNG -&gt; 24 THÁNG </strong></div><div><strong>- Anker Astro E1 5200: 500.000đ<br>- Anker PowerCoreSlim 5000 kèm cáp MicroUSB: 700.000đ<br>- Anker PowerCore 10400: 750.000đ<br>- Anker PowerCore I 10000: 750.000đ<br>- Anker PowerPort không dây Qi 10W: 800.000đ<br>- Anker PowerCore II 10000: 950.000đ<br>- Anker PowerCore+ 10050 QC2.0: 950.000đ<br>- Anker PowerCore+ 10050 QC3.0: 1.050.000đ<br>- Anker PowerCore ( 2 cổng 4A ) 26.800mAh: 1.800.000đ<br>- Anker PowerCore+ 26800 QC3.0: 1.900.000đ<br>- Anker PowerCore JumpStarter kiêm kích đề Oto 9000mAh: 2.500.000đ<br><br><br></strong><br></div><div><strong>- Energizer UE4003 4000mAh siêu mỏng: 400.000đ<br>- Energizer EVEREADY 5000mAh: 500.000đ<br>- Energizer UE10005 10000mAh: 500.000đ<br>- Energizer UE5001RG 5000mAh: 500.000đ<br>- Energizer UE10022BK 10000mAH: 550.000đ<br>- Energizer UE10009 bọc da 10000mAh: 900.000đ<br>- Energizer QE10000 không dây 5W 10000mAh: 900.000đ<br>- Energizer UE15002CQRD LIMITED EDITION USB-C 15000mAh Quick Charge 3.0: 1.100.000đ<br>- Energizer UE10030MP 10000mAh: 1.100.000đ<br>- Energizer UE20015CQ 20000mAh: 1.300.000đ<br><br>- Xiaomi 10.000mAh: 380.000đ<br>- Xiaomi 20.000mAh: 510.000đ<br><br><br><br>THẺ NHỚ TF SANDISK ULTRA MICRO SDXCUHS-I CARD - BẢO HÀNH 6 THÁNG - ĐẦU ĐỌC THẺ SSK<br></strong><br></div><div><strong>Thẻ Nhớ TF Class4<br>4GB ---&gt; Giá 100.000 VNĐ</strong><br><strong>8GB ---&gt; Giá 120.000 VNĐ</strong><br><strong>16GB ---&gt; Giá 190.000 VNĐ<br>32GB ---&gt; Giá 260.000 VNĐ</strong><br><br><strong>SANDISK ULTRA MICRO SDXCUHS-I CARD - CLASS 10 - 80MB/S<br>16GB --&gt; Giá 250.000 VNĐ<br>32GB --&gt; Giá 320.000 VNĐ<br>64GB --&gt; Giá 450.000 VNĐ<br><br>MICRO SD SAMSUNG EVO PLUS CLASS 10 - 95MB/S<br>32GB   --&gt; Giá 320.000 VNĐ<br>64GB   --&gt; Giá 450.000 VNĐ<br>128GB --&gt; Giá 680.000 VNĐ<br><br><br></strong><br><strong><em>BỘ LƯU TRỮ USB SANDISK - TOSHIBA - KINGSTON - TỐC ĐỘ ĐỌC GHI LÊN ĐẾN 150MB/S - BẢO HÀNH 6 THÁNG<br></em></strong><strong><br>SANDISK<br>SANDISK CZ73 - 64GB 3.0__GIÁ__ 510.000 VNĐ<br>SANDISK CZ73 - 32GB 3.0__GIÁ__ 320.000 VNĐ<br>SANDISK CZ73 - 16GB 3.0__GIÁ__ 240.000 VNĐ<br>SANDISK CZ600 - 64GB 3.0__GIÁ__ 480.000 VNĐ<br>SANDISK CZ600 - 32GB 3.0__GIÁ__ 300.000 VNĐ<br>SANDISK CZ600 - 16GB 3.0__GIÁ__ 225.000 VNĐ<br><br>TOSHIBA<br>TOSHIBA 32GB 3.0__GIÁ__ 320.000 VNĐ<br>TOSHIBA 16GB __GIÁ__ 170.000 VNĐ<br><br>KINGSTON<br>KINGSTON G3 32GB __GIÁ__ 370.000 VNĐ<br>KINGSTON SE 16GB __GIÁ__ 130.000 VNĐ<br></strong><br><strong><em>CÁC SẢN PHẨM ÂM THANH - LOA BLUETOOTH - MICRO - TAI NGHE</em></strong></div><ul><li>LOA HANMAN KARDON GO PLAY: 6.500.000 VNĐ</li><li>LOA JBL PUSSE 3: 4.500.000 VNĐ</li><li>LOA JBL CHARGE 4: 3.900.000 VNĐ</li><li>LOA JBL FLIP 4: 2.690.000 VNĐ</li><li><strong>LOA 5 TẤC KARAOKE ( LOA KẸO KÉO ): 4.500.000 VNĐ</strong></li><li><strong>LOA 4 TẤC KARAOKE ( LOA KẸO KÉO ): 2.500.000 VNĐ</strong></li><li><strong>LOA BLUETOOTH JBL-FLIP 4: 2.690.000 VNĐ</strong></li><li><strong>LOA BLUETOOTH ANKER PREMIUM STRERRO: 2.000.000 VNĐ</strong></li><li><strong>LOA BLUETOOTH DP-297L 3 TẤC: 1.950.000 VNĐ</strong></li><li><strong>LOA BLUETOOTH JBL-FLIP 2: 1.480.000 VNĐ</strong></li><li><strong>LOA BLUETOOTH ANKER SOUNDCORE SPORT: 950.000 VNĐ</strong></li><li><strong>LOA BLUETOOTH ANKER SOUNDCORE MINI1: 800.000VNĐ</strong></li><li><strong>LOA BLUETOOTH ANKER SOUNDCORE MINI2: 850.000VNĐ</strong></li><li><strong>LOA BLUETOOTH T2 4.2 CHỐNG THẤM NƯỚC 10W: 850.000 VNĐ</strong></li><li><strong>----------------------------------------------------------</strong></li><li><strong>MIC RỜI TEMESING CẶP W-48:GIÁ: 800.000 VNĐ</strong></li><li><strong>MIC TITAN M01: 520.000 VNĐ</strong></li><li><strong>MIC LOA 068: 320.000 VNĐ</strong></li><li><strong>MIC KHÔNG DÂY DAILE V10: 300.000 VNĐ</strong></li><li><strong>MIC KHÔNG DÂY TEMSHING: 250.000 VNĐ</strong></li><li><strong>-----------------------------------------------------------</strong></li><li><strong>USB BLUETOOTH: 150.000 VNĐ</strong></li><li><strong>-----------------------------------------------------------</strong></li><li><strong>TAI NGHE SOLO 2 WIRELESS: 3.300.000VNĐ</strong></li><li><strong>TAI NGHE SOLO 3 WIRELESS: 3.200.00VNĐ</strong></li><li><strong>TAI NGHE BLUETOOTH SOUNDCORE LIBERTY LIFE: 2.200.000VNĐ </strong></li><li><strong>TAI NGHE POWER BEATS: 2.100.000VNĐ</strong></li><li><strong>TAI NGHE MIX R: 2.100.000VNĐ</strong></li><li><strong>TAI NGHE BLUETOOTH SOUNDBUDS LIFE: 1.000.000VNĐ</strong></li><li><strong>TAI NGHE BACKBEAT GO 2: 1.500.000VNĐ</strong></li><li><strong>TAI NGHE JBL: 1.500.000VNĐ</strong></li></ul><div><strong><em>ĐỒ CHƠI CÔNG NGHỆ<br></em></strong><br><strong>- PHÁT WIFI TITAN WF8: 950.000VNĐ<br>- PHÁT WIFI 4G LTE SIERRA: 850.000VNĐ<br>- PHÁT WIFI DISPLAY: 490.000VNĐ<br>- KÍCH SÓNG WF2 XIAOMI: 190.000VNĐ<br>- LENS MẮT CÁ PLA1: 270.000VNĐ<br>- LENS MẮT CÁ PLA3: 410.000VNĐ<br>- LENS ỐNG KÍNH PL-WD04/WD03: 580.000VNĐ<br>- LENS ỐNG KÍNH PL-WD01/WD02: 600.000VNĐ<br>- LENS ỐNG KÍNH TELEZOOM QUANG HỌC PL-BL01: 610.000VNĐ<br>- BÀN PHÍM APPLE: 2.700.000VNĐ<br>- APPLE TV 4K 32GB: 3.200.000VNĐ<br>- CHUỘT BLUETOOTH APPLE: 2.100.000VNĐ</strong></div>', 'Article', 3, '2023-04-11 12:29:51.115292', '2023-04-11 12:29:51.115292');
INSERT INTO public.action_text_rich_texts VALUES (2, 'content', '<centered-div><strong>TUẤN BLACKBERRY</strong></centered-div><div><br></div><centered-div><strong style="color: rgb(225, 135, 9);">KÍNH CHÀO QUÝ KHÁCH</strong></centered-div><div><strong><br></strong><br></div><div><strong>⭐ SẴN HÀNG KHÔNG BÁO ẢO 28/01/2023 ⭐</strong></div><div><br></div><div><strong>════════★-★-★-★-★════════<br><br></strong><br></div><div><strong>🍀 IPHONE - AIRPODS - APPLE WATCH<br></strong><br><br></div><div><strong><em><br>iPhone 14 PROMAX<br></em></strong><strong><br>🍎14 Pro Max 128G / 256G / 512G / 1TB Vàng / Tím / Đen / Trắng NEW : Call 0979.58.7777</strong><br><br><strong><em>iPhone 13 PROMAX</em></strong><strong><br><br>🍎13 Pro Max 128G / 256G / 512G / 1TB Vàng / Blue / Đen / Trắng NEW : Call 0979.58.7777<br><br></strong><strong><em>iPhone 13 PRO<br></em></strong><strong><br></strong><strong><em>iPhone 13<br></em></strong><strong><br>🍎13 128G Xanh Lá / Xanh Blue / Hồng / Đen / Đỏ NEW (VN/A) : 18.800<br><br>🍎13 256G Đen 99% (VN/A) : 16.900<br>🍎13 128G Hồng 99% (VN/A) : 16.900 (Còn bảo hành)<br>🍎13 128G Trắng 99% (VN/A) : 16.600 (Còn bảo hành)<br>🍎13 128G Blue 99% (VN/A) : 16.500 (Còn bảo hành)<br><br></strong><strong><em>iPhone 12 PROMAX</em></strong><strong><br><br>🍎12 Pro Max 128Gb Trắng / Đen / Xanh 99% : 17.800<br><br></strong><br></div><div><strong><em>iPhone 12 PRO<br><br></em></strong><strong>🍎12 Pro 128Gb Đen / Xanh 99% : 14.800<br><br></strong><strong><em>iPhone 12<br></em></strong><strong><br>🍎12 64G Đen 99% (LL/A) : 11.600<br></strong><br><strong><em>iPhone 11 PRO MAX</em></strong><br><br></div><div><strong><br>🍎11 Pro Max 64G Vàng 99% : 11.990<br>🍎11 Pro Max 256gb Vàng 99% : 13.200</strong><br><strong><em><br>iPhone 11 PRO<br></em></strong><strong><br>🍎11 Pro 64G Đen / Vàng NEW (ZA/A) : 14.900<br><br>🍎11 Pro 64Gb Xanh 99% : 10.800<br></strong><br><strong><em>iPhone 11</em></strong><strong><br><br>🍎11 64G Xanh 99% : 8.990<br>🍎11 64G Trắng / Vàng / Đen / Tím 99% : 9.300<br><br></strong><br></div><div><strong><em>iPhone Xs Max<br><br></em></strong><br></div><div>🍎 XS MAX 64Gb Vàng  99%: 8.990<br><br><br></div><div><strong><em>iPhone X/Xr/Xs</em></strong></div><div><br><strong>🍎 XS 64G Trắng NEW TBH: 8.500<br><br>🍎 XS 64G Vàng 99% : 6.990<br>🍎 XS 64G Đen 98% : 5.900 (CHỈ CÓ 1 MÁY)<br></strong><br></div><div><strong><em>iPhone SE 2020/8/8Plus<br></em></strong><strong><br>🍎 8+ 64G Vàng / Trắng 99% : 5.800<br>🍎 8+ 256G  Đen 99% : 6.400<br><br>🍎 SE 2022 64G Đen 99% : 6.900<br><br>🍎 8 64G Vàng 99% : 4.500</strong><br><strong><br></strong><strong><em>iPhone 7/7Plus</em></strong><strong><br><br>🍎 7 32G Trắng / Đen 99% : 3.900<br></strong><br><strong><em>iPhone 5SE / 6/6s/6sPlus</em></strong><br><strong><br>🍎 5 SE 32G Vàng 99% : 2.800<br></strong><br><strong><em>Apple Watch</em></strong><br><br><strong>🍎AW S7 45mm Đen / Blue / Xanh lá / Trắng 99% : 7.900<br>🍎AW S7 41mm Trắng 99% : 6.900<br><br>🍎AW S5 44mm Thép Trắng 99% : 12.800<br>🍎AW S5 44mm Ceranic 99% : 12.500<br></strong><br><strong><em>Tai nghe Airpods</em></strong><strong><br></strong><br></div><div><strong>🎧 Tai nghe Airpods Pro Gen 2 (2022) NEW : 5.800<br>🎧 Tai nghe Airpods Pro (Sạc Magsafe) NEW : 4.800<br>🎧 Tai nghe Airpods 3 NEW : 3.990<br>🎧 Tai nghe Airpods 3 99% : 3.300<br>🎧 Tai nghe Airpods Pro 1 99% : 3.900 <br>🎧 Tai nghe Airpods 2 NEW: 2.900<br>_______________________________<br><br>🍀 IPAD BẢN WIFI / 4G - MACBOOK<br></strong><br></div><div><strong>📱 Ipad Pro 2021 M1 11'''' 128 NEW Xám: 19.500 (Bản Wifi)<br></strong><br><strong>📱 Ipad Gen 9 64gb Xám NEW: 8.300 (Wifi)<br><br>📱 Ipad Gen 6 32gb Đen 99: 6.900 (Bản 4G)<br><br> 📱 Ipad Gen 5 32gb Trắng 99: 6.750 (Bản 4G)<br>___________________________<br><br>🍀 MACBOOK / SURFACE<br></strong><br><strong>💻 Macbook Air M1 256GB New : Call 0979587777</strong><br>_______________________________<br><br>🍀 <strong>SAMSUNG CHÍNH HÃNG - XÁCH TAY<br><br>📲 S22Ultra 5G 256G Xanh (2 Sim) : 19.500 (Còn bảo hành tại Việt Nam)<br></strong><br></div><div><strong>📲 S21Ultra 5G Đen/ Đa sắc (2 Sim) : 13.900 (Còn bảo hành tại Việt Nam)<br><br>📲 Note 20 5G Hàn (1 Sim) : 7.500 <br><br>📲 Note 10 Plus 5G Mỹ Fullbox (1 Sim) : 8.990 <br><br>_______________________________<br><br>🍀 XIAOMI / OPPO<br><br>📲 Redmi note 11 Pro Đen (8/128g) 99% : 5.800<br>📲 Redmi 11T Đen  (8/128g) 99% : 6.500<br><br>📲 K40 Gaming NEW (12/128gb) Trắng : 7.900<br>📲 K40 Gaming NEW (12/256gb) Trắng : 9.300<br><br>______________________________<br><br><br>🍀 BLACKBERRY <br><br>📲 BB Q10 Đen : 2.300 <br><br>🎁 Quà tặng khi mua Sản Phẩm <br>- Cây lấy sim Xịn <br>- Dán cường lực bảo vệ màn hình <br>- Dán lưng chống xước <br>- Hộp đựng điện thoại <br>- Tài khoản các hệ điều hành Chính Chủ <br>- Kho Nhạc Chuông sành điệu tuỳ chọn<br>- Hỗ trợ cài Ứng dụng , Game trọn đời máy<br></strong><br></div><div><strong>______________________________<br><br>📞 Liên hệ ngay để được tư vấn trả góp: 0982.70.3456<br>- Trả góp 0% qua thẻ Tín Dụng <br>- Trả góp không cần đưa trước<br>- Trả góp nhanh chóng qua các công ty tài chính PPF, MB, Mirra Asset<br><br>⚡ Mua hàng trực tiếp tại TuanBlackBerry Store<br><br>🏡 24 Yersin - Nha Trang<br>⚡ Mua hàng từ xa Quý Khách vui lòng gọi hotline<br>☎️ 0982.70.3456 - 0979.58.7777</strong></div>', 'Article', 1, '2023-04-11 12:25:40.602655', '2023-04-11 16:04:09.528556');
INSERT INTO public.action_text_rich_texts VALUES (5, 'content', '<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSIyZ2lkOi8vdHVhbmJiL0FjdGl2ZVN0b3JhZ2U6OkJsb2IvND9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--9622a0079152faf2346126b9853375ad3269ee75" content-type="image/jpeg" url="http://localhost:7900/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e2aa39940989229fbf3d70e5af4bcf6e4f0db073/Small-Gardens-750x500.jpg" filename="Small-Gardens-750x500.jpg" filesize="83711" width="750" height="500" previewable="true" presentation="gallery" caption="meow"></action-text-attachment><br><br>no mw</div>', 'Article', 4, '2023-04-11 16:04:51.339325', '2023-04-19 04:40:50.898533');
INSERT INTO public.action_text_rich_texts VALUES (6, 'content', '<centered-div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSIyZ2lkOi8vdHVhbmJiL0FjdGl2ZVN0b3JhZ2U6OkJsb2IvNT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--c7af824798bbe9e9a164b184e0e2f0ea6ba34a96" content-type="image/webp" url="http://localhost:7900/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--2ea43626f01e8bda5b4475d760e91022195070bc/14-yellow.webp" filename="14-yellow.webp" filesize="11796" width="370" height="370" previewable="true"></action-text-attachment></centered-div><div><br><strong>ƯU ĐÃI THANH TOÁN</strong></div><ul><li> Mở ví VNPAY và thanh toán giảm thêm tới 100.000đ</li><li> Giảm thêm 300.000đ khi thanh toán qua VNPAY khi mua các sản phẩm iPhone - (<a href="https://hoanghamobile.com/tin-tuc/chuong-trinh-uu-dai-giam-gia-qua-vnpay"><strong style="color: rgb(0, 72, 61);">Xem chi tiết</strong></a>)</li><li> Nhận mã giảm giá tới 300.000đ qua ZaloPay khi mua iPhone 14 series - (<a href="https://hoanghamobile.com/tin-tuc/nhan-ma-giam-gia-toi-300-000d-qua-zalopay-khi-mua-iphone-14-series"><strong style="color: rgb(0, 72, 61);">Xem chi tiết</strong></a>)</li><li> Thanh toán qua Moca tặng ngay đế sạc trị giá 320.000đ (Cho hóa đơn có tổng giá trị từ 15 Triệu) - Áp dụng từ 01/04 - (<a href="https://hoanghamobile.com/tin-tuc/uu-dai-thanh-toan-qua-vi-dien-tu-moca-tang-cu-sac"><strong style="color: rgb(0, 72, 61);">Xem chi tiết</strong></a>)</li><li> Giảm thêm 30% tới 1,2 triệu khi mở thẻ TP Bank EVO - Duyệt nhanh chỉ 15 phút, LH Cửa hàng hoặc 19002091 để được hỗ trợ - (<a href="https://www.goevo.vn/hhm/giam-tao-bao-apple"><strong style="color: rgb(0, 72, 61);">Xem chi tiết</strong></a>)</li><li> Trả góp qua Homepaylater giảm thêm tới 500.000đ, duyệt nhanh chỉ 30s - (<a href="https://hoanghamobile.com/tin-tuc/uu-dai-tra-gop-voi-homepaylater-tai-hoang-ha-mobile"><strong style="color: rgb(0, 72, 61);">Xem chi tiết</strong></a>)</li><li> Mở thẻ tín dụng VPBank nhận ưu đãi tới 1.500.000đ - (<a href="https://hoanghamobile.com/tin-tuc/mo-the-vpbank-nhan-uu-dai-toi-15-trieu-dong-tai-hoang-ha-mobile"><strong style="color: rgb(0, 72, 61);">Xem chi tiết</strong></a>)</li><li> Hỗ trợ trả góp 0% qua 26 ngân hàng và công ty tài chính. - (<a href="https://hoanghamobile.com/mua-hang-tra-gop"><strong style="color: rgb(0, 72, 61);">Xem chi tiết</strong></a>)</li></ul><div><strong>ƯU ĐÃI ĐI KÈM</strong></div><ul><li> Mua kèm ốp lưng Clear Case with Magsafe Chính hãng - Ưu đãi thêm tới 300.000đ.</li><li> Tặng sim WINTEL(Reddi cũ) 055 chưa bao gồm gói cước (Trừ shop SiS) Hoặc sim data Mobifone Hera 5G (2GB/ngày) (Chưa bao gồm tháng đầu tiên) - Lưu ý: áp dụng mua trực tiếp tại cửa hàng. - (<a href="https://hoanghamobile.com/sim-the/sim-mobifone-hera-5g"><strong style="color: rgb(0, 72, 61);">Xem chi tiết</strong></a>)</li><li> Tặng esim data Mobifone Hera 5G (2GB/ngày) (Chưa bao gồm tháng đầu tiên) - Lưu ý: chỉ áp dụng mua trực tiếp tại cửa hàng.</li><li> Giảm thêm 200.000đ cho tất các sản phẩm Màn hình khi mua kèm Laptop,MacBook, Máy tính bảng và điện thoại.</li><li> Tiết kiệm lên tới 600.000đ khi mua Microsoft 365 (Office) kèm Laptop, MacBook, Máy tính bảng, Điện thoại (Áp dụng từ 10/4/2023 - 31/5/2023). -</li></ul>', 'Article', 10, '2023-04-19 04:42:57.615736', '2023-04-19 06:04:38.132611');
INSERT INTO public.action_text_rich_texts VALUES (7, 'content', '<div>Nội dụng phần cuối website<br>hiện thị bản đồ, các thông tin cần thiết</div>', 'Article', 11, '2023-04-19 06:20:31.887826', '2023-04-19 06:25:41.017177');


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.active_storage_attachments VALUES (1, 'embeds', 'ActionText::RichText', 1, 1, '2023-04-11 11:59:43.616058');
INSERT INTO public.active_storage_attachments VALUES (2, 'image', 'ActiveStorage::VariantRecord', 1, 2, '2023-04-11 12:16:02.095756');
INSERT INTO public.active_storage_attachments VALUES (3, 'embeds', 'ActionText::RichText', 5, 4, '2023-04-11 16:04:51.349079');
INSERT INTO public.active_storage_attachments VALUES (4, 'embeds', 'ActionText::RichText', 6, 5, '2023-04-19 04:42:57.63314');
INSERT INTO public.active_storage_attachments VALUES (5, 'image', 'ActiveStorage::VariantRecord', 2, 6, '2023-04-19 05:26:28.520638');
INSERT INTO public.active_storage_attachments VALUES (6, 'image', 'ActiveStorage::VariantRecord', 3, 7, '2023-04-19 05:33:35.101222');


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.active_storage_blobs VALUES (1, 'kpnif3ulsix4dt2rw78s2ug7l0o5', 'cola-0247.jpg', 'image/jpeg', '{"identified":true,"analyzed":true}', 'local', 167057, 'CA/1rNhqdue3YQOe32QnaQ==', '2023-04-11 11:54:49.147322');
INSERT INTO public.active_storage_blobs VALUES (2, '6a8qww8l9eggjrrhd1099cm97u8v', 'cola-0247.jpg', 'image/jpeg', '{"identified":true,"width":1024,"height":683,"analyzed":true}', 'local', 61029, 'mmndbjP6QxHUb392RjuO7Q==', '2023-04-11 12:16:02.093995');
INSERT INTO public.active_storage_blobs VALUES (3, 'lhy7wuvwciuqwq3y1datlb3qgh6e', 'Small-Gardens-750x500.jpg', 'image/jpeg', NULL, 'local', 83711, 'xroJXY3TH0QPxwhEJOj1Ug==', '2023-04-11 14:01:43.524408');
INSERT INTO public.active_storage_blobs VALUES (4, 'viufz92clps7625osl39jwv06lvs', 'Small-Gardens-750x500.jpg', 'image/jpeg', '{"identified":true,"width":750,"height":500,"analyzed":true}', 'local', 83711, 'xroJXY3TH0QPxwhEJOj1Ug==', '2023-04-11 16:04:29.198681');
INSERT INTO public.active_storage_blobs VALUES (5, 'm0m9zdr3i3hzn83fc5h84f5ddno6', '14-yellow.webp', 'image/webp', '{"identified":true,"width":370,"height":370,"analyzed":true}', 'local', 11796, 'eyRJSJtx3CKwNDKA/O+I0w==', '2023-04-19 04:42:53.508012');
INSERT INTO public.active_storage_blobs VALUES (6, 'lvytuqllec56lukb9sevfp6fsob9', '14-yellow.png', 'image/png', '{"identified":true,"width":370,"height":370,"analyzed":true}', 'local', 149023, 'DE+I9vzoX0yeaTZAidlBCg==', '2023-04-19 05:26:28.518742');
INSERT INTO public.active_storage_blobs VALUES (7, '46ttp81l75cy9r3fldyp2gkn9rz2', 'Small-Gardens-750x500.jpg', 'image/jpeg', '{"identified":true,"width":750,"height":500,"analyzed":true}', 'local', 78892, 'NLz+rxCWVuKCsmY2fiEtjQ==', '2023-04-19 05:33:35.099862');


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.active_storage_variant_records VALUES (1, 1, 'g9oDsuZ2Ke1OimlPvx7V2sj306E=');
INSERT INTO public.active_storage_variant_records VALUES (2, 5, 'mx2K4uWWso91XKUyRWMJEblfHgc=');
INSERT INTO public.active_storage_variant_records VALUES (3, 4, 'g9oDsuZ2Ke1OimlPvx7V2sj306E=');


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.ar_internal_metadata VALUES ('environment', 'development', '2023-03-29 08:40:16.863504', '2023-03-29 08:40:16.863504');
INSERT INTO public.ar_internal_metadata VALUES ('schema_sha1', 'd6dcf44207f59c2531f7b5020e367afe21dc0e7f', '2023-04-09 10:16:18.086674', '2023-04-09 10:16:18.086674');


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.articles VALUES (6, 'Tuyển dụng', NULL, '2023-04-09 10:16:22.992199', '2023-04-09 10:16:22.990705', '2023-04-09 10:16:22.99225', 'tuyen-dung', true, 3, NULL);
INSERT INTO public.articles VALUES (7, 'Các dịch vụ', NULL, '2023-04-09 10:16:22.998449', '2023-04-09 10:16:22.997099', '2023-04-09 10:16:22.998498', 'cac-dich-vu', true, 4, NULL);
INSERT INTO public.articles VALUES (8, 'Bảng giá sỉ', NULL, '2023-04-09 10:16:23.004285', '2023-04-09 10:16:23.002949', '2023-04-09 10:16:23.004345', 'bang-gia-si', true, 5, NULL);
INSERT INTO public.articles VALUES (9, 'Sim Số Đẹp', NULL, '2023-04-09 10:16:23.010214', '2023-04-09 10:16:23.008829', '2023-04-09 10:16:23.010286', 'sim-so-dep', true, 6, NULL);
INSERT INTO public.articles VALUES (2, 'Dịch Vụ Sữa Chữa', '', '2023-04-09 10:16:22.961081', '2023-04-09 10:16:22.959559', '2023-04-11 12:26:55.462946', 'dich-vu-sua-chua', true, 2, '1');
INSERT INTO public.articles VALUES (3, 'Phụ Kiện', '', '2023-04-09 10:16:22.968294', '2023-04-09 10:16:22.966703', '2023-04-11 12:29:51.116931', 'phu-kien', true, 3, '2');
INSERT INTO public.articles VALUES (1, 'Bảng Giá Sản Phẩm', '', '2023-04-09 10:16:22.941586', '2023-04-09 10:16:22.939272', '2023-04-19 04:38:08.382045', 'bang-gia-san-pham', true, 1, '');
INSERT INTO public.articles VALUES (4, 'Tư vấn mua hàng trả góp', '1', '2023-04-09 10:16:22.975714', '2023-04-09 10:16:22.973812', '2023-04-19 04:40:50.917624', 'tu-van-mua-hang-tra-gop', true, 1, '');
INSERT INTO public.articles VALUES (5, 'Chế độ bảo hành', 'hello', '2023-04-09 10:16:22.985053', '2023-04-09 10:16:22.98301', '2023-04-19 04:41:11.4096', 'che-do-bao-hanh', true, 2, '');
INSERT INTO public.articles VALUES (10, 'iPhone 14', 'iPhone 14 (128GB) - Vàng - 99%', NULL, '2023-04-19 04:42:57.587013', '2023-04-19 06:04:38.181212', 'iphone-14', NULL, 0, '19,290,000 ₫');
INSERT INTO public.articles VALUES (11, 'Footer', '', NULL, '2023-04-19 06:20:31.866634', '2023-04-19 06:25:41.021882', 'footer', NULL, -1, '');


--
-- Data for Name: featureds; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.featureds VALUES (7, 3, 3, '2023-04-11 11:05:01.001083', '2023-04-11 11:05:01.001083', 'auto_show');
INSERT INTO public.featureds VALUES (1, 1, 1, '2023-04-11 10:31:07.353566', '2023-04-11 12:25:55.046951', 'auto_show');
INSERT INTO public.featureds VALUES (2, 2, 2, '2023-04-11 10:33:20.281036', '2023-04-11 12:26:46.957869', 'auto_show');
INSERT INTO public.featureds VALUES (4, 5, 2, '2023-04-11 10:39:46.73169', '2023-04-11 10:39:46.73169', 'trending');
INSERT INTO public.featureds VALUES (5, 8, 3, '2023-04-11 10:39:53.039157', '2023-04-11 10:39:56.656958', 'trending');
INSERT INTO public.featureds VALUES (6, 8, 4, '2023-04-11 10:40:03.729217', '2023-04-11 10:40:03.729217', 'trending');
INSERT INTO public.featureds VALUES (3, 10, 10, '2023-04-11 10:39:37.842515', '2023-04-19 04:43:55.353121', 'trending');


--
-- Data for Name: mentioned_articles; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.menus VALUES (4, 4, 1, '2023-04-09 10:16:22.97932', '2023-04-09 10:16:22.97932', 'below_of_logo', 'Tư vấn mua hàng trả góp');
INSERT INTO public.menus VALUES (5, 5, 2, '2023-04-09 10:16:22.988646', '2023-04-09 10:16:22.988646', 'below_of_logo', 'Chế độ bảo hành');
INSERT INTO public.menus VALUES (6, 6, 3, '2023-04-09 10:16:22.995438', '2023-04-09 10:16:22.995438', 'below_of_logo', 'Tuyển dụng');
INSERT INTO public.menus VALUES (7, 7, 4, '2023-04-09 10:16:23.001336', '2023-04-09 10:16:23.001336', 'below_of_logo', 'Các dịch vụ');
INSERT INTO public.menus VALUES (8, 8, 5, '2023-04-09 10:16:23.007289', '2023-04-09 10:16:23.007289', 'below_of_logo', 'Bảng giá sỉ');
INSERT INTO public.menus VALUES (9, 9, 6, '2023-04-09 10:16:23.013786', '2023-04-09 10:16:23.013786', 'below_of_logo', 'Sim Số Đẹp');
INSERT INTO public.menus VALUES (3, 3, 3, '2023-04-09 10:16:22.971758', '2023-04-09 14:36:50.45067', 'right_of_logo', 'Phụ Kiện');
INSERT INTO public.menus VALUES (2, 2, 2, '2023-04-09 10:16:22.964566', '2023-04-09 14:36:59.26327', 'right_of_logo', 'Dịch Vụ Sữa Chữa');
INSERT INTO public.menus VALUES (1, 1, 1, '2023-04-09 10:16:22.95669', '2023-04-09 15:10:23.831124', 'right_of_logo', 'Bảng Giá Sản Phẩm');


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.schema_migrations VALUES ('20230326051338');
INSERT INTO public.schema_migrations VALUES ('20230326055947');
INSERT INTO public.schema_migrations VALUES ('20230326060423');
INSERT INTO public.schema_migrations VALUES ('20230326060424');
INSERT INTO public.schema_migrations VALUES ('20230326060718');
INSERT INTO public.schema_migrations VALUES ('20230326060746');
INSERT INTO public.schema_migrations VALUES ('20230326061254');
INSERT INTO public.schema_migrations VALUES ('20230326061919');
INSERT INTO public.schema_migrations VALUES ('20230326063221');
INSERT INTO public.schema_migrations VALUES ('20230326112800');
INSERT INTO public.schema_migrations VALUES ('20230326112807');
INSERT INTO public.schema_migrations VALUES ('20230326145938');
INSERT INTO public.schema_migrations VALUES ('20230326150847');
INSERT INTO public.schema_migrations VALUES ('20230326150851');
INSERT INTO public.schema_migrations VALUES ('20230326151449');
INSERT INTO public.schema_migrations VALUES ('20230409083423');
INSERT INTO public.schema_migrations VALUES ('20230409083920');
INSERT INTO public.schema_migrations VALUES ('20230411092422');
INSERT INTO public.schema_migrations VALUES ('20230411114439');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'tuan@tuanbb.com', '$2a$12$HjUAliqiJh3b/BaxjX45zulLqBrxFjdJP6ki3G0Tjpkv22AEErnt2', 'admin', NULL, NULL, NULL, '2023-04-09 10:16:22.679727', '2023-04-09 10:16:22.679727');
INSERT INTO public.users VALUES (2, 'thai@tuanbb.com', '$2a$12$A.U8zGZogD82kYeVNU8IdOxZjcODXdTLRFoZSh4QkrgTHiN4H1MSO', 'admin', NULL, NULL, NULL, '2023-04-09 10:16:22.924656', '2023-04-09 10:16:22.924656');


--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 7, true);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 6, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 7, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 3, true);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.articles_id_seq', 11, true);


--
-- Name: featureds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.featureds_id_seq', 7, true);


--
-- Name: mentioned_articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mentioned_articles_id_seq', 1, false);


--
-- Name: menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.menus_id_seq', 16, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: action_text_rich_texts action_text_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: featureds featureds_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.featureds
    ADD CONSTRAINT featureds_pkey PRIMARY KEY (id);


--
-- Name: mentioned_articles mentioned_articles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mentioned_articles
    ADD CONSTRAINT mentioned_articles_pkey PRIMARY KEY (id);


--
-- Name: menus menus_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_action_text_rich_texts_uniqueness; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_featureds_on_article_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_featureds_on_article_id ON public.featureds USING btree (article_id);


--
-- Name: index_mentioned_articles_on_article_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mentioned_articles_on_article_id ON public.mentioned_articles USING btree (article_id);


--
-- Name: index_mentioned_articles_on_other_article_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mentioned_articles_on_other_article_id ON public.mentioned_articles USING btree (other_article_id);


--
-- Name: index_menus_on_article_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_menus_on_article_id ON public.menus USING btree (article_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- PostgreSQL database dump complete
--

