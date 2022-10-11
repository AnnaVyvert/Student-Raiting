PGDMP     #                 	    z            rating    14.5    14.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    rating    DATABASE     c   CREATE DATABASE rating WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE rating;
                postgres    false            �            1259    25296    Users    TABLE     �   CREATE TABLE public."Users" (
    email character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    16395    courselevels    TABLE     Z   CREATE TABLE public.courselevels (
    id integer NOT NULL,
    level integer NOT NULL
);
     DROP TABLE public.courselevels;
       public         heap    postgres    false            �            1259    16398    courselevels_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courselevels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.courselevels_id_seq;
       public          postgres    false    209            �           0    0    courselevels_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.courselevels_id_seq OWNED BY public.courselevels.id;
          public          postgres    false    210            �            1259    16399    courses    TABLE     b   CREATE TABLE public.courses (
    id integer NOT NULL,
    title character varying(4) NOT NULL
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �            1259    16402    courses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.courses_id_seq;
       public          postgres    false    211            �           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
          public          postgres    false    212            �            1259    16403 	   datetable    TABLE     X   CREATE TABLE public.datetable (
    id integer NOT NULL,
    date daterange NOT NULL
);
    DROP TABLE public.datetable;
       public         heap    postgres    false            �            1259    16408    datetable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datetable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.datetable_id_seq;
       public          postgres    false    213            �           0    0    datetable_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.datetable_id_seq OWNED BY public.datetable.id;
          public          postgres    false    214            �            1259    16409    rating    TABLE     �   CREATE TABLE public.rating (
    id integer NOT NULL,
    points double precision NOT NULL,
    ratingcoursesid bigint NOT NULL
);
    DROP TABLE public.rating;
       public         heap    postgres    false            �            1259    16412    rating_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rating_id_seq;
       public          postgres    false    215            �           0    0    rating_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rating_id_seq OWNED BY public.rating.id;
          public          postgres    false    216            �            1259    16413    ratingcount    TABLE     �   CREATE TABLE public.ratingcount (
    id integer NOT NULL,
    courseid smallint NOT NULL,
    count integer NOT NULL,
    dateid bigint NOT NULL
);
    DROP TABLE public.ratingcount;
       public         heap    postgres    false            �            1259    16416    ratingcount_dateid_seq    SEQUENCE        CREATE SEQUENCE public.ratingcount_dateid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.ratingcount_dateid_seq;
       public          postgres    false    217            �           0    0    ratingcount_dateid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.ratingcount_dateid_seq OWNED BY public.ratingcount.dateid;
          public          postgres    false    218            �            1259    16417    ratingcount_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratingcount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ratingcount_id_seq;
       public          postgres    false    217            �           0    0    ratingcount_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ratingcount_id_seq OWNED BY public.ratingcount.id;
          public          postgres    false    219            �            1259    16418    ratingcourses    TABLE     z   CREATE TABLE public.ratingcourses (
    id integer NOT NULL,
    courseid bigint NOT NULL,
    levelid bigint NOT NULL
);
 !   DROP TABLE public.ratingcourses;
       public         heap    postgres    false            �            1259    16421    ratingcourses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratingcourses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ratingcourses_id_seq;
       public          postgres    false    220            �           0    0    ratingcourses_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ratingcourses_id_seq OWNED BY public.ratingcourses.id;
          public          postgres    false    221            �            1259    16422    students    TABLE     f  CREATE TABLE public.students (
    id integer NOT NULL,
    studnumber integer NOT NULL,
    fullname character varying(70) NOT NULL,
    state character varying(15) NOT NULL,
    educationgroup character varying(10) NOT NULL,
    institute character varying(7) NOT NULL,
    sad boolean NOT NULL,
    vacation boolean NOT NULL,
    free boolean NOT NULL
);
    DROP TABLE public.students;
       public         heap    postgres    false            �            1259    16425    students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public          postgres    false    222            �           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public          postgres    false    223            �            1259    16426    studentsfree    TABLE     {   CREATE TABLE public.studentsfree (
    id integer NOT NULL,
    studnumber integer NOT NULL,
    dateid bigint NOT NULL
);
     DROP TABLE public.studentsfree;
       public         heap    postgres    false            �            1259    16429    studentsfree_id_seq    SEQUENCE     �   CREATE SEQUENCE public.studentsfree_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.studentsfree_id_seq;
       public          postgres    false    224            �           0    0    studentsfree_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.studentsfree_id_seq OWNED BY public.studentsfree.id;
          public          postgres    false    225            �            1259    16430    studentsfree_studnumber_seq    SEQUENCE     �   CREATE SEQUENCE public.studentsfree_studnumber_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.studentsfree_studnumber_seq;
       public          postgres    false    224            �           0    0    studentsfree_studnumber_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.studentsfree_studnumber_seq OWNED BY public.studentsfree.studnumber;
          public          postgres    false    226            �            1259    16431    studentsrating    TABLE     �   CREATE TABLE public.studentsrating (
    id integer NOT NULL,
    studentid bigint NOT NULL,
    reatingid bigint NOT NULL,
    dateid bigint NOT NULL,
    destination boolean NOT NULL,
    cause character varying(20)
);
 "   DROP TABLE public.studentsrating;
       public         heap    postgres    false            �            1259    16434    studentsrating_id_seq    SEQUENCE     �   CREATE SEQUENCE public.studentsrating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.studentsrating_id_seq;
       public          postgres    false    227            �           0    0    studentsrating_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.studentsrating_id_seq OWNED BY public.studentsrating.id;
          public          postgres    false    228            �            1259    16435    studentssad    TABLE     z   CREATE TABLE public.studentssad (
    id integer NOT NULL,
    studnumber integer NOT NULL,
    dateid bigint NOT NULL
);
    DROP TABLE public.studentssad;
       public         heap    postgres    false            �            1259    16438    studentssad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.studentssad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.studentssad_id_seq;
       public          postgres    false    229            �           0    0    studentssad_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.studentssad_id_seq OWNED BY public.studentssad.id;
          public          postgres    false    230            �            1259    16439    studentsvacation    TABLE        CREATE TABLE public.studentsvacation (
    id integer NOT NULL,
    studnumber integer NOT NULL,
    dateid bigint NOT NULL
);
 $   DROP TABLE public.studentsvacation;
       public         heap    postgres    false            �            1259    16442    studentsvacation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.studentsvacation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.studentsvacation_id_seq;
       public          postgres    false    231            �           0    0    studentsvacation_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.studentsvacation_id_seq OWNED BY public.studentsvacation.id;
          public          postgres    false    232            �           2604    16443    courselevels id    DEFAULT     r   ALTER TABLE ONLY public.courselevels ALTER COLUMN id SET DEFAULT nextval('public.courselevels_id_seq'::regclass);
 >   ALTER TABLE public.courselevels ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    16444 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            �           2604    16445    datetable id    DEFAULT     l   ALTER TABLE ONLY public.datetable ALTER COLUMN id SET DEFAULT nextval('public.datetable_id_seq'::regclass);
 ;   ALTER TABLE public.datetable ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    16446 	   rating id    DEFAULT     f   ALTER TABLE ONLY public.rating ALTER COLUMN id SET DEFAULT nextval('public.rating_id_seq'::regclass);
 8   ALTER TABLE public.rating ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    16447    ratingcount id    DEFAULT     p   ALTER TABLE ONLY public.ratingcount ALTER COLUMN id SET DEFAULT nextval('public.ratingcount_id_seq'::regclass);
 =   ALTER TABLE public.ratingcount ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    217            �           2604    16448    ratingcount dateid    DEFAULT     x   ALTER TABLE ONLY public.ratingcount ALTER COLUMN dateid SET DEFAULT nextval('public.ratingcount_dateid_seq'::regclass);
 A   ALTER TABLE public.ratingcount ALTER COLUMN dateid DROP DEFAULT;
       public          postgres    false    218    217            �           2604    16449    ratingcourses id    DEFAULT     t   ALTER TABLE ONLY public.ratingcourses ALTER COLUMN id SET DEFAULT nextval('public.ratingcourses_id_seq'::regclass);
 ?   ALTER TABLE public.ratingcourses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    16450    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16451    studentsfree id    DEFAULT     r   ALTER TABLE ONLY public.studentsfree ALTER COLUMN id SET DEFAULT nextval('public.studentsfree_id_seq'::regclass);
 >   ALTER TABLE public.studentsfree ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16452    studentsrating id    DEFAULT     v   ALTER TABLE ONLY public.studentsrating ALTER COLUMN id SET DEFAULT nextval('public.studentsrating_id_seq'::regclass);
 @   ALTER TABLE public.studentsrating ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    16453    studentssad id    DEFAULT     p   ALTER TABLE ONLY public.studentssad ALTER COLUMN id SET DEFAULT nextval('public.studentssad_id_seq'::regclass);
 =   ALTER TABLE public.studentssad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    16454    studentsvacation id    DEFAULT     z   ALTER TABLE ONLY public.studentsvacation ALTER COLUMN id SET DEFAULT nextval('public.studentsvacation_id_seq'::regclass);
 B   ALTER TABLE public.studentsvacation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �          0    25296    Users 
   TABLE DATA           <   COPY public."Users" (email, username, password) FROM stdin;
    public          postgres    false    233   �       �          0    16395    courselevels 
   TABLE DATA           1   COPY public.courselevels (id, level) FROM stdin;
    public          postgres    false    209   w�       �          0    16399    courses 
   TABLE DATA           ,   COPY public.courses (id, title) FROM stdin;
    public          postgres    false    211   ��       �          0    16403 	   datetable 
   TABLE DATA           -   COPY public.datetable (id, date) FROM stdin;
    public          postgres    false    213   �       �          0    16409    rating 
   TABLE DATA           =   COPY public.rating (id, points, ratingcoursesid) FROM stdin;
    public          postgres    false    215   �       �          0    16413    ratingcount 
   TABLE DATA           B   COPY public.ratingcount (id, courseid, count, dateid) FROM stdin;
    public          postgres    false    217   �       �          0    16418    ratingcourses 
   TABLE DATA           >   COPY public.ratingcourses (id, courseid, levelid) FROM stdin;
    public          postgres    false    220   ;�       �          0    16422    students 
   TABLE DATA           s   COPY public.students (id, studnumber, fullname, state, educationgroup, institute, sad, vacation, free) FROM stdin;
    public          postgres    false    222   y�       �          0    16426    studentsfree 
   TABLE DATA           >   COPY public.studentsfree (id, studnumber, dateid) FROM stdin;
    public          postgres    false    224   ��       �          0    16431    studentsrating 
   TABLE DATA           ^   COPY public.studentsrating (id, studentid, reatingid, dateid, destination, cause) FROM stdin;
    public          postgres    false    227   ��       �          0    16435    studentssad 
   TABLE DATA           =   COPY public.studentssad (id, studnumber, dateid) FROM stdin;
    public          postgres    false    229   Й       �          0    16439    studentsvacation 
   TABLE DATA           B   COPY public.studentsvacation (id, studnumber, dateid) FROM stdin;
    public          postgres    false    231   �       �           0    0    courselevels_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.courselevels_id_seq', 4, true);
          public          postgres    false    210            �           0    0    courses_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.courses_id_seq', 5, true);
          public          postgres    false    212            �           0    0    datetable_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.datetable_id_seq', 1, false);
          public          postgres    false    214            �           0    0    rating_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rating_id_seq', 2, true);
          public          postgres    false    216            �           0    0    ratingcount_dateid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ratingcount_dateid_seq', 1, false);
          public          postgres    false    218            �           0    0    ratingcount_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ratingcount_id_seq', 1, false);
          public          postgres    false    219            �           0    0    ratingcourses_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ratingcourses_id_seq', 7, true);
          public          postgres    false    221            �           0    0    students_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.students_id_seq', 1, true);
          public          postgres    false    223            �           0    0    studentsfree_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.studentsfree_id_seq', 1, false);
          public          postgres    false    225            �           0    0    studentsfree_studnumber_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.studentsfree_studnumber_seq', 1, false);
          public          postgres    false    226            �           0    0    studentsrating_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.studentsrating_id_seq', 1, false);
          public          postgres    false    228            �           0    0    studentssad_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.studentssad_id_seq', 1, false);
          public          postgres    false    230            �           0    0    studentsvacation_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.studentsvacation_id_seq', 1, false);
          public          postgres    false    232            �           2606    25302    Users Users_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (email);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    233            �           2606    25903    Users Users_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key" UNIQUE (username);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key";
       public            postgres    false    233            �           2606    25905    Users Users_username_key1 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key1" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key1";
       public            postgres    false    233            �           2606    25907    Users Users_username_key2 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key2" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key2";
       public            postgres    false    233            �           2606    25909    Users Users_username_key3 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key3" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key3";
       public            postgres    false    233            �           2606    25911    Users Users_username_key4 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key4" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key4";
       public            postgres    false    233            �           2606    25913    Users Users_username_key5 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key5" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key5";
       public            postgres    false    233            �           2606    25915    Users Users_username_key6 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key6" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key6";
       public            postgres    false    233            �           2606    25917    Users Users_username_key7 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key7" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key7";
       public            postgres    false    233            �           2606    16456    courselevels courselevels_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.courselevels
    ADD CONSTRAINT courselevels_pk PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.courselevels DROP CONSTRAINT courselevels_pk;
       public            postgres    false    209            �           2606    16458    courses courses_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pk;
       public            postgres    false    211            �           2606    16460    datetable datetable_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.datetable
    ADD CONSTRAINT datetable_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.datetable DROP CONSTRAINT datetable_pk;
       public            postgres    false    213            �           2606    16462    rating rating_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_pk;
       public            postgres    false    215            �           2606    16464    ratingcount ratingcount_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.ratingcount
    ADD CONSTRAINT ratingcount_pk PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.ratingcount DROP CONSTRAINT ratingcount_pk;
       public            postgres    false    217            �           2606    16466    ratingcourses ratingcourses_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.ratingcourses
    ADD CONSTRAINT ratingcourses_pk PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ratingcourses DROP CONSTRAINT ratingcourses_pk;
       public            postgres    false    220            �           2606    16468    students students_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pk;
       public            postgres    false    222            �           2606    25961     students students_studnumber_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key UNIQUE (studnumber);
 J   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key;
       public            postgres    false    222            �           2606    25963 !   students students_studnumber_key1 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key1 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key1;
       public            postgres    false    222            �           2606    25981 "   students students_studnumber_key10 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key10 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key10;
       public            postgres    false    222            �           2606    25983 "   students students_studnumber_key11 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key11 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key11;
       public            postgres    false    222            �           2606    25985 "   students students_studnumber_key12 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key12 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key12;
       public            postgres    false    222            �           2606    25987 "   students students_studnumber_key13 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key13 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key13;
       public            postgres    false    222            �           2606    25989 "   students students_studnumber_key14 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key14 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key14;
       public            postgres    false    222            �           2606    25991 "   students students_studnumber_key15 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key15 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key15;
       public            postgres    false    222            �           2606    25993 "   students students_studnumber_key16 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key16 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key16;
       public            postgres    false    222            �           2606    25995 "   students students_studnumber_key17 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key17 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key17;
       public            postgres    false    222            �           2606    25997 "   students students_studnumber_key18 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key18 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key18;
       public            postgres    false    222            �           2606    25965 !   students students_studnumber_key2 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key2 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key2;
       public            postgres    false    222            �           2606    25967 !   students students_studnumber_key3 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key3 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key3;
       public            postgres    false    222            �           2606    25969 !   students students_studnumber_key4 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key4 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key4;
       public            postgres    false    222            �           2606    25971 !   students students_studnumber_key5 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key5 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key5;
       public            postgres    false    222            �           2606    25973 !   students students_studnumber_key6 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key6 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key6;
       public            postgres    false    222            �           2606    25975 !   students students_studnumber_key7 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key7 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key7;
       public            postgres    false    222            �           2606    25977 !   students students_studnumber_key8 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key8 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key8;
       public            postgres    false    222            �           2606    25979 !   students students_studnumber_key9 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key9 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key9;
       public            postgres    false    222            �           2606    16474    studentsfree studentsfree_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.studentsfree
    ADD CONSTRAINT studentsfree_pk PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.studentsfree DROP CONSTRAINT studentsfree_pk;
       public            postgres    false    224            �           2606    16476     studentsrating studentsrating_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.studentsrating
    ADD CONSTRAINT studentsrating_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.studentsrating DROP CONSTRAINT studentsrating_pk;
       public            postgres    false    227            �           2606    16478    studentssad studentssad_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.studentssad
    ADD CONSTRAINT studentssad_pk PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.studentssad DROP CONSTRAINT studentssad_pk;
       public            postgres    false    229            �           2606    16480 $   studentsvacation studentsvacation_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.studentsvacation
    ADD CONSTRAINT studentsvacation_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.studentsvacation DROP CONSTRAINT studentsvacation_pk;
       public            postgres    false    231            �           2606    25953 "   rating rating_ratingcoursesid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_ratingcoursesid_fkey FOREIGN KEY (ratingcoursesid) REFERENCES public.ratingcourses(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_ratingcoursesid_fkey;
       public          postgres    false    3243    220    215            �           2606    25928 %   ratingcount ratingcount_courseid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratingcount
    ADD CONSTRAINT ratingcount_courseid_fkey FOREIGN KEY (courseid) REFERENCES public.courses(id) ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY public.ratingcount DROP CONSTRAINT ratingcount_courseid_fkey;
       public          postgres    false    211    3235    217            �           2606    25933 #   ratingcount ratingcount_dateid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratingcount
    ADD CONSTRAINT ratingcount_dateid_fkey FOREIGN KEY (dateid) REFERENCES public.datetable(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.ratingcount DROP CONSTRAINT ratingcount_dateid_fkey;
       public          postgres    false    3237    217    213            �           2606    25918 )   ratingcourses ratingcourses_courseid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratingcourses
    ADD CONSTRAINT ratingcourses_courseid_fkey FOREIGN KEY (courseid) REFERENCES public.courses(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.ratingcourses DROP CONSTRAINT ratingcourses_courseid_fkey;
       public          postgres    false    220    3235    211            �           2606    25923 (   ratingcourses ratingcourses_levelid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratingcourses
    ADD CONSTRAINT ratingcourses_levelid_fkey FOREIGN KEY (levelid) REFERENCES public.courselevels(id) ON UPDATE CASCADE ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.ratingcourses DROP CONSTRAINT ratingcourses_levelid_fkey;
       public          postgres    false    220    209    3233            �           2606    25948 %   studentsfree studentsfree_dateid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentsfree
    ADD CONSTRAINT studentsfree_dateid_fkey FOREIGN KEY (dateid) REFERENCES public.datetable(id) ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY public.studentsfree DROP CONSTRAINT studentsfree_dateid_fkey;
       public          postgres    false    213    3237    224            �           2606    26008 )   studentsrating studentsrating_dateid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentsrating
    ADD CONSTRAINT studentsrating_dateid_fkey FOREIGN KEY (dateid) REFERENCES public.datetable(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.studentsrating DROP CONSTRAINT studentsrating_dateid_fkey;
       public          postgres    false    3237    227    213            �           2606    26003 ,   studentsrating studentsrating_reatingid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentsrating
    ADD CONSTRAINT studentsrating_reatingid_fkey FOREIGN KEY (reatingid) REFERENCES public.rating(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.studentsrating DROP CONSTRAINT studentsrating_reatingid_fkey;
       public          postgres    false    215    3239    227            �           2606    25998 ,   studentsrating studentsrating_studentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentsrating
    ADD CONSTRAINT studentsrating_studentid_fkey FOREIGN KEY (studentid) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.studentsrating DROP CONSTRAINT studentsrating_studentid_fkey;
       public          postgres    false    222    3245    227            �           2606    25938 #   studentssad studentssad_dateid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentssad
    ADD CONSTRAINT studentssad_dateid_fkey FOREIGN KEY (dateid) REFERENCES public.datetable(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.studentssad DROP CONSTRAINT studentssad_dateid_fkey;
       public          postgres    false    213    229    3237            �           2606    25943 -   studentsvacation studentsvacation_dateid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentsvacation
    ADD CONSTRAINT studentsvacation_dateid_fkey FOREIGN KEY (dateid) REFERENCES public.datetable(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public.studentsvacation DROP CONSTRAINT studentsvacation_dateid_fkey;
       public          postgres    false    3237    231    213            �   c   x�����O׭�-s�L�KI��+*�,��/�T1JR14P)���,����w�HJO/�u
�7KL�2H
���.�ы4q����J�*Jwu.Nq����� e�      �      x�3�4�2�4�2�4�2�4����� i�      �   0   x�3�0�S��8/,RƜ)��.,2L9/�R1z\\\ ̸�      �      x������ � �      �      x������ � �      �      x������ � �      �   .   x�ȱ  ���)`���oN��b�b�L�M�C�ˎ�,�P?���      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     