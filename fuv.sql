PGDMP      0            
    |            fuv    13.14    16.3 _    *	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -	           1262    115011    fuv    DATABASE     k   CREATE DATABASE fuv WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';
    DROP DATABASE fuv;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            .	           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    123290 
   admin_menu    TABLE     �  CREATE TABLE public.admin_menu (
    id bigint NOT NULL,
    parent_id bigint DEFAULT '0'::bigint NOT NULL,
    "order" integer DEFAULT 0 NOT NULL,
    title character varying(50) NOT NULL,
    icon character varying(50),
    uri character varying(50),
    extension character varying(50) NOT NULL,
    show smallint DEFAULT '1'::smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.admin_menu;
       public         heap    postgres    false    4            �            1259    123288    admin_menu_id_seq    SEQUENCE     z   CREATE SEQUENCE public.admin_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.admin_menu_id_seq;
       public          postgres    false    4    211            /	           0    0    admin_menu_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.admin_menu_id_seq OWNED BY public.admin_menu.id;
          public          postgres    false    210            �            1259    123277    admins    TABLE     >  CREATE TABLE public.admins (
    id bigint NOT NULL,
    username character varying(120) NOT NULL,
    password character varying(80) NOT NULL,
    avatar character varying(255),
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.admins;
       public         heap    postgres    false    4            �            1259    123275    admins_id_seq    SEQUENCE     v   CREATE SEQUENCE public.admins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.admins_id_seq;
       public          postgres    false    209    4            0	           0    0    admins_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.admins_id_seq OWNED BY public.admins.id;
          public          postgres    false    208            �            1259    123315    ads    TABLE     <  CREATE TABLE public.ads (
    id bigint NOT NULL,
    adname character varying(255) NOT NULL,
    adcode text NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    enable boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.ads;
       public         heap    postgres    false    4            �            1259    123313 
   ads_id_seq    SEQUENCE     s   CREATE SEQUENCE public.ads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.ads_id_seq;
       public          postgres    false    4    215            1	           0    0 
   ads_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.ads_id_seq OWNED BY public.ads.id;
          public          postgres    false    214            �            1259    139264    cache    TABLE     �   CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap    postgres    false    4            �            1259    139272    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap    postgres    false    4            �            1259    123267 
   categories    TABLE       CREATE TABLE public.categories (
    id bigint NOT NULL,
    category_name character varying(255) NOT NULL,
    enable boolean DEFAULT true NOT NULL,
    sort integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.categories;
       public         heap    postgres    false    4            �            1259    123265    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    4    207            2	           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    206            �            1259    123301    links    TABLE     �  CREATE TABLE public.links (
    linkid bigint NOT NULL,
    link_name character varying(255) NOT NULL,
    link_address character varying(255) NOT NULL,
    sort integer DEFAULT 0 NOT NULL,
    enable boolean DEFAULT true NOT NULL,
    intime timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.links;
       public         heap    postgres    false    4            �            1259    123299    links_linkid_seq    SEQUENCE     y   CREATE SEQUENCE public.links_linkid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.links_linkid_seq;
       public          postgres    false    213    4            3	           0    0    links_linkid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.links_linkid_seq OWNED BY public.links.linkid;
          public          postgres    false    212            �            1259    123008 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false    4            �            1259    123006    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    4    201            4	           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    200            �            1259    123253    movies    TABLE     �  CREATE TABLE public.movies (
    mid bigint NOT NULL,
    title character varying(400) NOT NULL,
    cid integer NOT NULL,
    url character varying(400),
    thumb character varying(400),
    "desc" text,
    keywords character varying(200),
    filename character varying(200),
    created_time timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    vodid integer
);
    DROP TABLE public.movies;
       public         heap    postgres    false    4            5	           0    0    COLUMN movies.title    COMMENT     3   COMMENT ON COLUMN public.movies.title IS '标题';
          public          postgres    false    205            6	           0    0    COLUMN movies.cid    COMMENT     1   COMMENT ON COLUMN public.movies.cid IS '分类';
          public          postgres    false    205            7	           0    0    COLUMN movies.url    COMMENT     1   COMMENT ON COLUMN public.movies.url IS '地址';
          public          postgres    false    205            8	           0    0    COLUMN movies.thumb    COMMENT     6   COMMENT ON COLUMN public.movies.thumb IS '缩略图';
          public          postgres    false    205            9	           0    0    COLUMN movies."desc"    COMMENT     4   COMMENT ON COLUMN public.movies."desc" IS '描述';
          public          postgres    false    205            :	           0    0    COLUMN movies.keywords    COMMENT     9   COMMENT ON COLUMN public.movies.keywords IS '关键词';
          public          postgres    false    205            ;	           0    0    COLUMN movies.filename    COMMENT     9   COMMENT ON COLUMN public.movies.filename IS '文件名';
          public          postgres    false    205            <	           0    0    COLUMN movies.created_time    COMMENT     @   COMMENT ON COLUMN public.movies.created_time IS '创建时间';
          public          postgres    false    205            =	           0    0    COLUMN movies.vodid    COMMENT     8   COMMENT ON COLUMN public.movies.vodid IS '采集的id';
          public          postgres    false    205            �            1259    123251    movies_mid_seq    SEQUENCE     w   CREATE SEQUENCE public.movies_mid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.movies_mid_seq;
       public          postgres    false    4    205            >	           0    0    movies_mid_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.movies_mid_seq OWNED BY public.movies.mid;
          public          postgres    false    204            �            1259    123327    tupians    TABLE       CREATE TABLE public.tupians (
    id bigint NOT NULL,
    img character varying(255) NOT NULL,
    enable boolean DEFAULT true NOT NULL,
    weizhi character varying(255) NOT NULL,
    image_column character varying(255) NOT NULL,
    lianjie character varying(255) NOT NULL,
    paiwei integer DEFAULT 0 NOT NULL,
    intime timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.tupians;
       public         heap    postgres    false    4            �            1259    123325    tupians_id_seq    SEQUENCE     w   CREATE SEQUENCE public.tupians_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tupians_id_seq;
       public          postgres    false    4    217            ?	           0    0    tupians_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tupians_id_seq OWNED BY public.tupians.id;
          public          postgres    false    216            �            1259    123242    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    current_team_id bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    gender character varying(255),
    email character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false    4            �            1259    123240    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    4    203            @	           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    202            �            1259    123359    videos    TABLE     �  CREATE TABLE public.videos (
    id bigint NOT NULL,
    vod_id integer NOT NULL,
    vod_name character varying(255) NOT NULL,
    vod_class character varying(255),
    vod_pic character varying(255),
    vod_play_url character varying(255) NOT NULL,
    type_name character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.videos;
       public         heap    postgres    false    4            �            1259    123357    videos_id_seq    SEQUENCE     v   CREATE SEQUENCE public.videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.videos_id_seq;
       public          postgres    false    4    219            A	           0    0    videos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.videos_id_seq OWNED BY public.videos.id;
          public          postgres    false    218            c           2604    123293    admin_menu id    DEFAULT     n   ALTER TABLE ONLY public.admin_menu ALTER COLUMN id SET DEFAULT nextval('public.admin_menu_id_seq'::regclass);
 <   ALTER TABLE public.admin_menu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            b           2604    123280 	   admins id    DEFAULT     f   ALTER TABLE ONLY public.admins ALTER COLUMN id SET DEFAULT nextval('public.admins_id_seq'::regclass);
 8   ALTER TABLE public.admins ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            k           2604    123318    ads id    DEFAULT     `   ALTER TABLE ONLY public.ads ALTER COLUMN id SET DEFAULT nextval('public.ads_id_seq'::regclass);
 5   ALTER TABLE public.ads ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            _           2604    123270    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            g           2604    123304    links linkid    DEFAULT     l   ALTER TABLE ONLY public.links ALTER COLUMN linkid SET DEFAULT nextval('public.links_linkid_seq'::regclass);
 ;   ALTER TABLE public.links ALTER COLUMN linkid DROP DEFAULT;
       public          postgres    false    212    213    213            [           2604    123011    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            ]           2604    123256 
   movies mid    DEFAULT     h   ALTER TABLE ONLY public.movies ALTER COLUMN mid SET DEFAULT nextval('public.movies_mid_seq'::regclass);
 9   ALTER TABLE public.movies ALTER COLUMN mid DROP DEFAULT;
       public          postgres    false    205    204    205            m           2604    123330 
   tupians id    DEFAULT     h   ALTER TABLE ONLY public.tupians ALTER COLUMN id SET DEFAULT nextval('public.tupians_id_seq'::regclass);
 9   ALTER TABLE public.tupians ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            \           2604    123245    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            q           2604    123362 	   videos id    DEFAULT     f   ALTER TABLE ONLY public.videos ALTER COLUMN id SET DEFAULT nextval('public.videos_id_seq'::regclass);
 8   ALTER TABLE public.videos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            	          0    123290 
   admin_menu 
   TABLE DATA           w   COPY public.admin_menu (id, parent_id, "order", title, icon, uri, extension, show, created_at, updated_at) FROM stdin;
    public          postgres    false    211   �i       	          0    123277    admins 
   TABLE DATA           h   COPY public.admins (id, username, password, avatar, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    209   �i       !	          0    123315    ads 
   TABLE DATA           g   COPY public.ads (id, adname, adcode, start_date, end_date, enable, created_at, updated_at) FROM stdin;
    public          postgres    false    215   �i       &	          0    139264    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public          postgres    false    220   	j       '	          0    139272    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public          postgres    false    221   &j       	          0    123267 
   categories 
   TABLE DATA           ]   COPY public.categories (id, category_name, enable, sort, created_at, updated_at) FROM stdin;
    public          postgres    false    207   Cj       	          0    123301    links 
   TABLE DATA           n   COPY public.links (linkid, link_name, link_address, sort, enable, intime, created_at, updated_at) FROM stdin;
    public          postgres    false    213   `j       	          0    123008 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    201   }j       	          0    123253    movies 
   TABLE DATA           n   COPY public.movies (mid, title, cid, url, thumb, "desc", keywords, filename, created_time, vodid) FROM stdin;
    public          postgres    false    205   Pk       #	          0    123327    tupians 
   TABLE DATA              COPY public.tupians (id, img, enable, weizhi, image_column, lianjie, paiwei, intime, name, created_at, updated_at) FROM stdin;
    public          postgres    false    217   mk       	          0    123242    users 
   TABLE DATA           {   COPY public.users (id, name, password, remember_token, current_team_id, created_at, updated_at, gender, email) FROM stdin;
    public          postgres    false    203   �k       %	          0    123359    videos 
   TABLE DATA           {   COPY public.videos (id, vod_id, vod_name, vod_class, vod_pic, vod_play_url, type_name, created_at, updated_at) FROM stdin;
    public          postgres    false    219   4n       B	           0    0    admin_menu_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_menu_id_seq', 1, false);
          public          postgres    false    210            C	           0    0    admins_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.admins_id_seq', 1, false);
          public          postgres    false    208            D	           0    0 
   ads_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.ads_id_seq', 1, false);
          public          postgres    false    214            E	           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    206            F	           0    0    links_linkid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.links_linkid_seq', 1, false);
          public          postgres    false    212            G	           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 31, true);
          public          postgres    false    200            H	           0    0    movies_mid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.movies_mid_seq', 1, false);
          public          postgres    false    204            I	           0    0    tupians_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tupians_id_seq', 1, false);
          public          postgres    false    216            J	           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 7, true);
          public          postgres    false    202            K	           0    0    videos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.videos_id_seq', 520, true);
          public          postgres    false    218            �           2606    123298    admin_menu admin_menu_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.admin_menu
    ADD CONSTRAINT admin_menu_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.admin_menu DROP CONSTRAINT admin_menu_pkey;
       public            postgres    false    211                       2606    123285    admins admins_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.admins DROP CONSTRAINT admins_pkey;
       public            postgres    false    209            �           2606    123287    admins admins_username_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_username_unique UNIQUE (username);
 G   ALTER TABLE ONLY public.admins DROP CONSTRAINT admins_username_unique;
       public            postgres    false    209            �           2606    123324    ads ads_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.ads DROP CONSTRAINT ads_pkey;
       public            postgres    false    215            �           2606    139279    cache_locks cache_locks_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);
 F   ALTER TABLE ONLY public.cache_locks DROP CONSTRAINT cache_locks_pkey;
       public            postgres    false    221            �           2606    139271    cache cache_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);
 :   ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
       public            postgres    false    220            }           2606    123274    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    207            �           2606    123312    links links_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.links
    ADD CONSTRAINT links_pkey PRIMARY KEY (linkid);
 :   ALTER TABLE ONLY public.links DROP CONSTRAINT links_pkey;
       public            postgres    false    213            s           2606    123013    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    201            z           2606    123262    movies movies_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (mid);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    205            �           2606    123338    tupians tupians_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tupians
    ADD CONSTRAINT tupians_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tupians DROP CONSTRAINT tupians_pkey;
       public            postgres    false    217            u           2606    131086    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    203            w           2606    123250    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203            �           2606    123367    videos videos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public            postgres    false    219            x           1259    123263    movies_keywords_index    INDEX     L   CREATE INDEX movies_keywords_index ON public.movies USING btree (keywords);
 )   DROP INDEX public.movies_keywords_index;
       public            postgres    false    205            {           1259    123264    movies_vodid_index    INDEX     F   CREATE INDEX movies_vodid_index ON public.movies USING btree (vodid);
 &   DROP INDEX public.movies_vodid_index;
       public            postgres    false    205            	      x������ � �      	      x������ � �      !	      x������ � �      &	      x������ � �      '	      x������ � �      	      x������ � �      	      x������ � �      	   �   x�]�[��0�o�����^*Y�f��(t�E��$DV��l��
 P���[̯��˖���g�
AE@���Z�F8�q~�(�hi�_��Rp:s�F��1L����:ڴ%^�9����K)�ER��]ON��uݞ��˶�EV�aC�;�6GJ�S��(
�>�W}t���`�)aA�!%���W��~q�} <�W      	      x������ � �      #	      x������ � �      	   �  x�m�Ks�@F��+��6<�%�A�����ʆ��P��������{�խ��ܾ�K��( @�4�x֏>Qs^#UN���f[�*�dbՖm.�h�&���N6�m�m�O�z Ћ ��� ~ �ì+��!�fn���!�A&�)��h��^��v�i��B^ Jl�g}wx��q*٣�+/�P��I� ��o$�E`��"}HoU�F�2]�uY��h�Y9�;�
�:�(ǹw<�c��L�^h����nx
ޒ����
��*��y9g�e�Ȟ.ڙT��D��G?�;?��+��c�s�6�)�0�f�"����<��6�oƭ
���8�٥]�me#��tX�3��צ��Q&�9\��h�l���o�	�*��E3"Df��yyO��B�W �����<̺ҿ�w����y����(��B����/����D������Σ�Ŭ1t���c�]���E|�}�z�X���R5�XWҴ{{:���ԝ+fi ����o�B�
f�v��|���� מ�0�J�-��V����DG�HV8��P��Rj\�$&��R���W,[�[T�ɉ�(o����Fp�*��d��/�<��R՚��b���)�3"��f���bY�훀p����˺�/�;�O����^�B�      %	      x��}YsG����_��圸צ*�2��o 1ϖ��{o����0��DZBBH�������wgU����ݙ��Ot	��'LGȸ�]]�\�s�Z{��R�\�$URIE&���әW��%:\����~��N�������ý��t�4Ò$��1)M���O�td1\�����#A�&���`i,�[�^���b����//���\|3�_M�r�a�bغ�������`a��.�O�\Mvu�֭g�Ɋ`����=��Uܼ��߾9r�7����u���}��7
��#~�}�t�<��AReY�_�GLKqUՓM�ڎ��k�9���]]���_n���o��!v��S(G��5�����Gn�츏���<���,n���
v�W����c��B�Qԃ����� 3������z��4�m �iSmX�z�f��m�eW��L;`�^���I�v���bm6�cC��p�M80�?�c�o?ͮ-��·�;~K��ڑ�^
ۓ�u���ɠ/���v��'�����F��]]WƠ�/���cٵ����g@�ۺ�a�6��DlY�lK6]a��EB���Ջ�[�C���"�W+�V�]�$c%V}�:��G2�F�Z�Ie��eM�T]&9�I%2��L�g�o2��Lb;�h���C4ѕI&/��k3���~׈��>��f�g ����'9:1\�v�q,Ms]�2d)�{��U_>��z1qMAC�|�	��1���2��|�Bp����A�憞�3����m�6'��ŽWY����Kt�+x�������8In�-�Y�A>���Bx��7�CaKc�8���ٵ����X=[��'���L�k�������"v}��n|�H3d`�e�h��˦��X�j��Z��?��/<>�?: b�5,�G�E����P�$�y�6d���D_&��;q���T[&9��M-��e����N�f��D&�<�z	�Og�d7_@�fR<���=H�d����V&���^���"��iE2�����x&�%D$I��%�$!���!ӈ��7�O����f8�{��' M�2t6��Ѱ�/|ʲrг�]�ഐ�a��3����Ӗ٠~��x�����;r/��-�~��0�'C�]<����K�mWs�mJ��H�n�i!۶e%z�Ϟ���U�< �5&M�$q��r�o���:g0eWay��Hז­�AXӃ�t��=�{H�~| Z�/m�u-׻ ��vN�O	殮A�X���� fɊ�)�f�6<�Fbu�����?��sW�X)F>w�� Hv{���rd0�B'OĊ���CĠ-C��a�%�a�RG�3��=l�QMB;̔mB (]7 ǡ�vW=��;>���񟎇ͭ���!��`��G���@C���\g/���5��ٍ�d����򴔿-�K��=��r���m����js8�`����6:�<�������v�[�AW�iK3]������󟁯�檮���r\VdM�-Uw�H|��s���'�?�\ϡ�U$��&R�����f�����
����']o̮6��~:<�CL��:F���^�� m�b������\�mMQR��j�:�!Ż�~���l��WH���)�_�X<lX�l��Q����.����CWG�[��UZ��y����mc�li�ֵ����vD$��a�X��MT�)������ؔ]�8���<q��	�;��q����;`�=ڒ� y�V��ϋ���Bv����L<������q�B[k��f1Cõd��R
 ��H&�g�j�ay��rm�Q��w�3�Й[% PHx�8��0��#�  �	@M�j�K���6:�w�!��T=d"��USU�5���
�H�?-��M'�%�uLU#2�5�SM�4�M <G�u���?��Ǌ��� ��W������L�E&�f�
4��yx<�I�2��D���v�\� �$�ҼK�2a�L3������$�7d�k��|&�C���t8�F0X��
��o����s���ɼ�a��\z���mhf��v���d��ӞI�p��N���sY�I�U���A7��K��2�>vX�R����:8��>���g�mu�#��Y~ƺ��יd"�ѝI �O�#o!kgR��99-�@��i=�
���mx0K��s=�{��������Su%���G�t(�)'��eb�R�N59��7��QwEh$�}��b�Tg&U�Im�g��<L|:ٍF����o�r���"��4�Q5\�'�G0]}�|d٭8@�3����	�^��HbƯ��v���2�V& �%N��D��E�<�TA6S��M6,������؍� �JW��\|I@JI��-��n�>N� cK)(��NPL����o�'�!�¡�mM�^����m�2���]��K��~���v/�k�D�]����v���7�O؂R��Dnq�x��a��DE�c{���2Hb#W���O������mI؄��Y���*I����a��RS4���g�_WP3�σ��)�&��̹b���6C�djh����Ĩ�)����eW��";�jQ�<cg���ݚgQp�@�ύ����{��R���x#�u�s0h�*>�x��EG
�I�%�0�k*��*�K�hEWm�x���r�YF�9��}�3鳻���A�0r$�P��g�����~�f,V0+�	��`���mȮ��-�0I�Py��ٿ�R��(eY�㸚.9��Z�����"Ր<I?�<z�J����J �!���N��Z�zak��[t�M�1f�:&�ܹ�nk�4ѶCӉ�x�k���Ȭ�2��]��վd|���n�4Qi�jb��t97�B�������
pn�;Ng���\]��xԳ�(+F�6��_���i�"y1��x�]z���5Z?%�л���A��8k�*#��L<�sUC���Y�l��E�S�<x���>�-��N=�㛟�d���W�X�79�9 ��c�k}�З}�Ik��>���U ���UJ� �e�P0�}��c���X�)�XE�X��>Vl�>Va|�>V� �}�O���c�}���X���c���* w���,� �e뿋�U�C*�X��a���X��}�O�
 Y����>��z�/�X�j�З}���֏"V���K|���_��J�c}貏u(��>��*�XǦ�c�c}[��c}���U���U$�e��V���>�a}��Q���W�X���c}���QD�>��R��*Nk_���10�����>�G��N6�
)5;��K�?a�6���k�6���h=�T��&?>�'ҟ8p�B�P��{�'�34Yqa�pX�%[�^�:������3�}�i��FHb��GHzF�Ĩ��h��SէN{Q2P���z�vX��\�#��eݰ��D7a��]�5-�M�;��<�2r��A�Y���o��_������l�2�'��]�#Y��������j�
�Y�M�:�َ0�ŮRn��W��b�d�9c &1[]�v����D��s[��O��Tn`9���|�]O��*sU�n�k�'�t�&��a˴e*�:�]m��bW�0RTW7�Qb�.�qL��ϊ���û'OC'�W�H� �uc_�H������S�X1V,˄����yD�Y��zkXĊN��ޭ����
���,�,��)̀eK�T>O]�)�ȱ��]�s߃oo�wɃX��}�$�I���A�1��g�E�ƌ��Z��i*��=�1OE���U+Q���wN����d>5��W�	c�ŘɾY�A���F`�����Dw!�W�-�:m+�nbX�h�z�Һp짟N[%�!ƌ+��-_f�k�c����fW�!�	�q.���6�_t�V��y�]m�n5;����߷&��>��}N�g�"�e:���ZW4P���ݱd�Cő��p���yQt�$�S+"W?{�����tG2������;�\����q�� ΰ� ��t<b*��m� y�㖥��5��r�!c>|�ݸe7(����%Xs�f`��$��v]G%�亞��Q��    �j����}_�A:�遼�ȇi^�*Mn�TG��6\��R5i �u��a��f�����Δ`̂�E�^��H�.�����[&���±vx���R�<��rHnrܯ����w���N��0��穐��ɧst3�`&��p�/�ǒLo�#��WE��|*�Hgʱ$�h��
��tL�|dQU=���S�O�U/ڤ�DXPPЪ�G�Q�dK������B�mٮ�h�4ɔMݐ���.qq4w|��~`�{�JU�;j��q��*I�btn>L����t'+�74+/bt��_dd�o�[vc��6�{�7�̠�K��@H�c�re�VU����Hd�^���'�:[d���}рc���R�P�\��.¦k��⸪
��Ȗ�T�(�U߿$�R.�,ER$S�*�&��ӰvG��Y)�s�%��&J���Ǫ����p�?�*-�9A{�C�"���������vr�яI{��o�c�o���Xr�U���ƺl��D�D�Af:���Ґ��l��}���lT����DXPZ�T;�u}0lص
�/hm/3��~�x��KG��c���a�A��J��r�������DV������!|��o§跭�t�u����m�����L8׾��F��kٮ�S��h��[q�Pu"��d;�m�!�Ue111�85���������� .���Mb%�8��O_�j�r<�+"ٰ�AR7,͒,�=��(z�'�ʝ��?=�UI0aM�Ƚ܈Sː��@6-�`z����垧c~�N$�b#�fc��t�0��H�������A��^��ѕ�X80���sn�r�+��F�������m8v����kk1Z?��.���p	�F���9�dk��I��Z�f�Q��E���#7%l߹g_,Zx�'�&Uc	F���s=��8�yŬT��Ƭ���tcblbǯ_��::�$��Sk�����&H�ar��^�֧��q�%�ZPw<[���qȫ��p���L���~W:�zS�<�Y9�mc6���𚪭Z���`=�S;�����n��n�<�c��B�`��� dN�UbT��VX��w����̮���[��{~c�Y�ý7E�G����a��LbUʚ
��t �3��3��]�Ϛ�	?����3�}���h�g�0��
�<������9v*v|v��9��(o�mp�Q�����?㣻]��$��:"��aM-�`n�Pϴ;3'әd�1/�����,�z��5fěv�|�]cs2���7vg�)q�m��<�J\!'z��c.B�8{��JٔU�ӱly��lz@�Ld I7�Ƞ�<���Ԉ��ȀRD@�'���5-�&�S�n���Xn�����F��5�*�T7����>c��u\$i��Ͷ�+ˎ�[D��b;�P�����S�����3Qj�?�G�\#�*�>H)S��>\n��]��o����W����>Y�x3�������g�>��dœ�g�f O�4�"X2���eE�#�~W�]�.}-�"�R�5�r���mw��X����K�0��JJۛb0�au�U4>�k^�e������YA�	��+�vXB�������,�S��M�`'d(�N
b,��(#Ǳ0$m�֑��<��ѱgI��Y�1t|�����Q�wM�G��1��r�e��֡��N�a�E�:��ed��x��	�Ûz��5�+|�ߕ���Mty���XcRr��>��5vZ��i���~� �c=l-a}=m[��qr7��5�Q���-�2X�+&��uى��m.��{WO��T<����T�N�ј��]V��{;�+G"����%��]o����m;��|w<��m��g|��� 3����N��d]d�2�mȦ�"�uA+y��b2���H��(����R.��b	Җ&�G��7����[%�r���������=R|�
b#5m"����U�=OŒ���nQ�Ƚ�r�>z�p�T�pu1\�"H��5;�I7�p�^2�,6R6�[�,=͵�� �v�2rɅe80-�$>^�:,�����`�!���tƥ�p��a���:۬>�h��Ū���s�-�I������|�/2)�.C�于<�$�ʶ� �a��+�����,)���J���2�{{y�t���-��=�kV.�-�����8����Z~���٠��Koi�[�Y�jq&3��0Tϑ&�p\G� ���1��d-���!�<���;W�M�(�dI@%W��v|�5��V��������y����ѳ��5gRe�B2�j�&v��+��y�u/�����_e���8�)ݮ���TO0�:HxZt��^s��<�,r�`&��ێkabخI�ix 7e`(��HZ$����kȾ�u:s!-	H��E?� �#����=���ս�e@� %���
8 ��>_a���)^�I����͆"79s�X*��J<�T<�=�HrGC$:09^Տ��kћ�#A���[��k}@��٥p��v-�ȀlgB~WF,��{��d�ӓ]�v�^��~S��0Ī�|'9�=>8ŚvwzruM���wS��W���ix/�1H� "X��>&�w���,y�$Cr�,WC���4�f����G3��.8����=���,�B6a�MՈ�#��\��獌��=��1)�»�'��U�Mٝu����kXFm˥����2����㬧��=�5��nj�o���b2y|~�^u��N�w7�;?������y MpmprV�������^��v�p�v>a���7~�S�f����༔_��;�T�og��o[�˼���:���o�h��5|Pi�������2ïiin�{�p��H�j����v��i�j��2%T��#��H��uƃ;�����81.I���SUg�ʺ��SU����=�� �&����*�Y���ЉQi;���1�5,A�~�<�����6��l��fW���ut���u����#��c�ӖX��lWW�		�l'�jq�����|���#D�%�*&l���}�
&Jv��%� �/~v�'���r5E�l���ky:�sM��uՊ�'�#?������޷?�ȑ
Ɉq�.�'N����2�I���2Y��g�9k�$E0F�щ�)�k[����F�Л���?������?R!n��SǎVaY��-�td0�x�g��WR1I�6�����_`q�`{"�_f�ms�������0�M �3�fZ�Ν�7��V���8�S&���:2�E��8�t��
�d{(Z&��:q{��G$�B7aE )�b��L-ۉ���O˧IԄs�gl���	Z���|�H���v��թL��~-���Ȝ+I�ej�%�H�����`S":��.�����v���"s��>U��	��c�l3˵{���Z�-���kZ&q�g*����=I��[��#��p���jE�$d�+N�zT����::�<��'���n�Eu�����N�$량�Bf����lYұ�K�0-l��!��KX�[1���q�yx���o�_?�{E���*��N����N�KF�7m�,�v��5HA���4�hV��d��ǎs���5WP���VL`��YD�U�%��-T�I����߃�#�����Y�+��$���A�dH@�UTU]<&�O�m��$��c�r1���������A��1���nM�F{�Z�#q1��B���%��ڠ@�B�l`~��t��3�y�D�&Gc�lHE���KpwMZ9e�c+��&�&^M��[���(�2�4�j7�:yy������M?;(�muΟp���`Ă)���上J�����/�$���H /��n�>�(2�T"����=:�?)I[��C��Օ�x��,���g�OՊ��-����6E�葸ئf'�mO�%�8�驮�#�!SA�D�r���U��S�"W�hl��F��+9�b���)������oy.X�0>�k=Lv��c��3��2�O��U�w�C�V�3qX���3�!���.�`�K�,�0B�y�Gh�fD�X�n�x�ʣ"������v������n��^�ұQ:�ʹ��n�]�3�A� 	  Z,�5�lXg�~l*W�4��<��r"!S�j:�8:�+y�᪪e��K��������y�D:Ѱi6TQy���h~b$�f�����`:M7Wh�s�ZOgv��Ca������߹�yad6�|��3�u��mZȷON���Y����b ���l�ְ-�.�� �������n^?�� )] %�L����$s�;h�ן�Q~b�ӱ�ӓ}��"������v�줂ՙ��r�u���|���W��y��&h��k��!F8���z'��0�R<�*��ѐ��51�r�x� p �� �?�?��~�}	 6�REeu�w@�ik3�g�o��5���s�r���q����r���lM�l�C��J�$���[���8���ݣ��ǭH|�0��ӕ�Iݟ�T?�eR���e̿�b���eD/�+*�`+��>*#��Z�MϪ�_V�<��E��;��,��#q�]5I�,ͳ4CF�"��)U��Hp�p{t�������H�����0/+�\�BH�+����'l���whR{SK؂�����ٕfoI4��}��C������*L�oF
���`�;��'�^6=�b��"�6UW�l���-c�������v�\6��a�:z��:1t����l{V����T�5U>��}��rv=��b�_��
�;{��q�d�O�s�y�B����s_�E��bx�m�/ R������f�["�=��t�ꗓ7J�B7 7k��5���^��ݯ������;I>�a�?�nt���m��î梁A��:�w]��i;ش\�D�}#*+Fs��Gz��� #� �́��<"u2{$���*3��~>�:���\��Y�ʇ4�%���܋���4U<H��u;�fF����*[O��'�O-Z�fhqM[�$��+�#�uUG�ؗD��kե_ŋVEh
�]�G�VIX��Lޣp6��|.�E�M&��'1'-��pb>�:8�x�2)h٦[k�$�.��2���4��f;�ޚ���9�%�a#�ݏUX��M�U��Y�T�]?~��OE�I!/�RQy�긤�l����W��+�1��U�2�(@wmքl��R,�pet�f8���t%0���t�я�%��B! Tq��U��Xq>�4&��:t-���.՚"IA�z&���� ���&x�����FfV�m���@5ٶiL������\�ꍋ�ߡ��PH��<����i}��B1�Eroho���`�{��`ʄ�'|6m�V�R��V[Ϲ�LP�$�ƾ�.���Ԯ���ӹ�zI���/���d鰳'�z�u�u��/��n=�u����Z�a��$��>��Y�V���Gה�����#��H�LU��g��յ�xٍ�H,Aіg�&�gE�g|���W���'��5��,t�M��nB�#�u,Q֎��ݹ�x�Z��:��aSǶb��D\OSU�UAh�0�<��!r���K��ǰ*��lTT��(��:B[7����y��O�?4���x�`[@��z�i��r����X�����Ū�z	ԃZvX5�v�s ٗ�Ʀ��!(��Ʀ�D�:
#Xv>R�,[�!8,Re��h��0�_���q�!��/�[�!8�CPĲCP�CP�/�!(L�!(�CP�C�IAa0��A��AaT�Ai��h���s
�J��A������@����?T��;�);�u
���;�);�*u@��|�<Y ��CpX��A)� �����[+;8~���a� �����~�A`�A����Ou
��7w
��v
�RvJ�@��|�C�qT���CP`�e���5PQ�ABƟȾt��6e���A!�t��6e��0��B����'�Vv�T�!(�CP࿳CP`�F�!�8�/�[�!8�CPĲCP�CP�/�!(L�!(�CP�C��A!0��A���A!T�A��Bh���u>�*���A��s�`ȸ¾�[ж?t�%���i�&6K�¶���]�g��z;.�}�niY���������*�\ɰMl@`Bd䘦+�ם<�����@(����Wݺ���>�p�M�ƾZIҿ��?=@ �Za�g+�%)8���_��gO�Uv�^V�n4�_
w����	+���#��ʲ��� .6��iڡᨼ�|��#Ty;�h8���4���a�����GK0rY�K�`Usϳ�.I2�h�z�R�1잾�#W����ȑ� �#��B���T��@��ڴ�Ū��:����?�Pl%:�����JU�R��@���I8��צ~c#]��pr�Z��57���6��ATǔ�i�2d]wmOUlI�u�*�����޽zB�nV� "��*NT_<	h�tu1�]��.u��X7�}�k^/��:6�N48�R�*#W'������DQl�5$۳;|���<��������s:��	���א���U5H'����Z�_y������� �`�`w���&�K��'K�d(�n@L���4YQM�I�ၔ$��������K��.���r�w�_����<�|I^��n��m���&[�j�J�\*�"�H��u]�4�4$�F6���j[�a����}���K�\-X�7���)��W���f�ɛD3@�`lZ�D�D�b�Q6�j���gŵ��~�\}�->��x Rq��,�}�@�����F,���N��f��i��qtj�tÂq�61�dGB�a��dK��
�p���?�ӏ�yގ8�a���{�`��O���Qv?\��;�֎��ù����>q4֑����C�����d �gI桉��w*O�}�o�� �@�L�U:5���UX"ō�aj1�*��{��\�J	&� �(��I�5�b:D�u���C��7-t��ۿ�L
��<�
,/=3��#�ٍ�R����K��⹮l��%�`�6M�lS2\�\SsM�n�����<{��j��8��S :��}�,��5љ&v���)����zMG���-����D2�P��,:Ɔ��4m�� �:_����U��\)�4�����{�FR��c7#�����כ@ ¡R�� w�=�Ӓ�&D��y���?0�
���Ǟ�\�K0x� �eC>_��$�@�R%
@ )�����g����B	X&�mڦn����ȕd�VAb@~�K;t�<z]:���S׋g��X7�]d6+j&s}���hv5�F�]��ۧŽ�?GK#�E>�PöAt�5@H�p5�5�s��Vi�����9���8��'�Z��wG���z�Y)F�#�Uہa�f˚b8�M������谣�I����ѯ%�!F���F�ˡ`44�5�eH.3�Wv���"�ghӭ����In���YaD�=�յњ^���gÍF��������Nq3kv��9��ew2�Rn������2���bk�61l�z����L$K������j�AtE��V� ;�6e�k(A���gz��%&��a�K�6�M�0\r�{���7�h�բ���|�������     