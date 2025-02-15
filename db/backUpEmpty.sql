PGDMP                     	    z            rating    14.5    14.5 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    16394    rating    DATABASE     c   CREATE DATABASE rating WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE rating;
                postgres    false            �            1259    34845    Users    TABLE     �   CREATE TABLE public."Users" (
    email character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    date timestamp with time zone NOT NULL
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
       public          postgres    false    209            #           0    0    courselevels_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.courselevels_id_seq OWNED BY public.courselevels.id;
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
       public          postgres    false    211            $           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
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
       public          postgres    false    213            %           0    0    datetable_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.datetable_id_seq OWNED BY public.datetable.id;
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
       public          postgres    false    215            &           0    0    rating_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rating_id_seq OWNED BY public.rating.id;
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
       public          postgres    false    217            '           0    0    ratingcount_dateid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.ratingcount_dateid_seq OWNED BY public.ratingcount.dateid;
          public          postgres    false    218            �            1259    16417    ratingcount_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratingcount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ratingcount_id_seq;
       public          postgres    false    217            (           0    0    ratingcount_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ratingcount_id_seq OWNED BY public.ratingcount.id;
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
       public          postgres    false    220            )           0    0    ratingcourses_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ratingcourses_id_seq OWNED BY public.ratingcourses.id;
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
       public          postgres    false    222            *           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
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
       public          postgres    false    224            +           0    0    studentsfree_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.studentsfree_id_seq OWNED BY public.studentsfree.id;
          public          postgres    false    225            �            1259    16430    studentsfree_studnumber_seq    SEQUENCE     �   CREATE SEQUENCE public.studentsfree_studnumber_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.studentsfree_studnumber_seq;
       public          postgres    false    224            ,           0    0    studentsfree_studnumber_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.studentsfree_studnumber_seq OWNED BY public.studentsfree.studnumber;
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
       public          postgres    false    227            -           0    0    studentsrating_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.studentsrating_id_seq OWNED BY public.studentsrating.id;
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
       public          postgres    false    229            .           0    0    studentssad_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.studentssad_id_seq OWNED BY public.studentssad.id;
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
       public          postgres    false    231            /           0    0    studentsvacation_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.studentsvacation_id_seq OWNED BY public.studentsvacation.id;
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
       public          postgres    false    232    231                      0    34845    Users 
   TABLE DATA           B   COPY public."Users" (email, username, password, date) FROM stdin;
    public          postgres    false    233   ��                 0    16395    courselevels 
   TABLE DATA           1   COPY public.courselevels (id, level) FROM stdin;
    public          postgres    false    209   t�                 0    16399    courses 
   TABLE DATA           ,   COPY public.courses (id, title) FROM stdin;
    public          postgres    false    211   ��                 0    16403 	   datetable 
   TABLE DATA           -   COPY public.datetable (id, date) FROM stdin;
    public          postgres    false    213   ��       
          0    16409    rating 
   TABLE DATA           =   COPY public.rating (id, points, ratingcoursesid) FROM stdin;
    public          postgres    false    215   ��                 0    16413    ratingcount 
   TABLE DATA           B   COPY public.ratingcount (id, courseid, count, dateid) FROM stdin;
    public          postgres    false    217   �                 0    16418    ratingcourses 
   TABLE DATA           >   COPY public.ratingcourses (id, courseid, levelid) FROM stdin;
    public          postgres    false    220   8�                 0    16422    students 
   TABLE DATA           s   COPY public.students (id, studnumber, fullname, state, educationgroup, institute, sad, vacation, free) FROM stdin;
    public          postgres    false    222   v�                 0    16426    studentsfree 
   TABLE DATA           >   COPY public.studentsfree (id, studnumber, dateid) FROM stdin;
    public          postgres    false    224   ��                 0    16431    studentsrating 
   TABLE DATA           ^   COPY public.studentsrating (id, studentid, reatingid, dateid, destination, cause) FROM stdin;
    public          postgres    false    227   ��                 0    16435    studentssad 
   TABLE DATA           =   COPY public.studentssad (id, studnumber, dateid) FROM stdin;
    public          postgres    false    229   ��                 0    16439    studentsvacation 
   TABLE DATA           B   COPY public.studentsvacation (id, studnumber, dateid) FROM stdin;
    public          postgres    false    231   ��       0           0    0    courselevels_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.courselevels_id_seq', 4, true);
          public          postgres    false    210            1           0    0    courses_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.courses_id_seq', 5, true);
          public          postgres    false    212            2           0    0    datetable_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.datetable_id_seq', 1, false);
          public          postgres    false    214            3           0    0    rating_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rating_id_seq', 2, true);
          public          postgres    false    216            4           0    0    ratingcount_dateid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ratingcount_dateid_seq', 1, false);
          public          postgres    false    218            5           0    0    ratingcount_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ratingcount_id_seq', 1, false);
          public          postgres    false    219            6           0    0    ratingcourses_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ratingcourses_id_seq', 7, true);
          public          postgres    false    221            7           0    0    students_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.students_id_seq', 1, true);
          public          postgres    false    223            8           0    0    studentsfree_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.studentsfree_id_seq', 1, false);
          public          postgres    false    225            9           0    0    studentsfree_studnumber_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.studentsfree_studnumber_seq', 1, false);
          public          postgres    false    226            :           0    0    studentsrating_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.studentsrating_id_seq', 1, false);
          public          postgres    false    228            ;           0    0    studentssad_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.studentssad_id_seq', 1, false);
          public          postgres    false    230            <           0    0    studentsvacation_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.studentsvacation_id_seq', 1, false);
          public          postgres    false    232            9           2606    34851    Users Users_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (email);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    233            ;           2606    39461    Users Users_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key" UNIQUE (username);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key";
       public            postgres    false    233            =           2606    39463    Users Users_username_key1 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key1" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key1";
       public            postgres    false    233            ?           2606    39457    Users Users_username_key10 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key10" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key10";
       public            postgres    false    233            A           2606    39479    Users Users_username_key11 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key11" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key11";
       public            postgres    false    233            C           2606    39481    Users Users_username_key12 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key12" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key12";
       public            postgres    false    233            E           2606    39455    Users Users_username_key13 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key13" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key13";
       public            postgres    false    233            G           2606    39453    Users Users_username_key14 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key14" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key14";
       public            postgres    false    233            I           2606    39483    Users Users_username_key15 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key15" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key15";
       public            postgres    false    233            K           2606    39485    Users Users_username_key16 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key16" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key16";
       public            postgres    false    233            M           2606    39451    Users Users_username_key17 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key17" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key17";
       public            postgres    false    233            O           2606    39487    Users Users_username_key18 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key18" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key18";
       public            postgres    false    233            Q           2606    39489    Users Users_username_key19 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key19" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key19";
       public            postgres    false    233            S           2606    39465    Users Users_username_key2 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key2" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key2";
       public            postgres    false    233            U           2606    39491    Users Users_username_key20 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key20" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key20";
       public            postgres    false    233            W           2606    39493    Users Users_username_key21 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key21" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key21";
       public            postgres    false    233            Y           2606    39495    Users Users_username_key22 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key22" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key22";
       public            postgres    false    233            [           2606    39449    Users Users_username_key23 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key23" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key23";
       public            postgres    false    233            ]           2606    39497    Users Users_username_key24 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key24" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key24";
       public            postgres    false    233            _           2606    39499    Users Users_username_key25 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key25" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key25";
       public            postgres    false    233            a           2606    39467    Users Users_username_key3 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key3" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key3";
       public            postgres    false    233            c           2606    39459    Users Users_username_key4 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key4" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key4";
       public            postgres    false    233            e           2606    39469    Users Users_username_key5 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key5" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key5";
       public            postgres    false    233            g           2606    39471    Users Users_username_key6 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key6" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key6";
       public            postgres    false    233            i           2606    39473    Users Users_username_key7 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key7" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key7";
       public            postgres    false    233            k           2606    39475    Users Users_username_key8 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key8" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key8";
       public            postgres    false    233            m           2606    39477    Users Users_username_key9 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key9" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key9";
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
       public            postgres    false    222            �           2606    39593     students students_studnumber_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key UNIQUE (studnumber);
 J   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key;
       public            postgres    false    222            �           2606    39595 !   students students_studnumber_key1 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key1 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key1;
       public            postgres    false    222            �           2606    39635 "   students students_studnumber_key10 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key10 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key10;
       public            postgres    false    222            �           2606    39637 "   students students_studnumber_key11 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key11 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key11;
       public            postgres    false    222            �           2606    39639 "   students students_studnumber_key12 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key12 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key12;
       public            postgres    false    222            �           2606    39641 "   students students_studnumber_key13 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key13 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key13;
       public            postgres    false    222            �           2606    39643 "   students students_studnumber_key14 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key14 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key14;
       public            postgres    false    222            �           2606    39645 "   students students_studnumber_key15 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key15 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key15;
       public            postgres    false    222            �           2606    39647 "   students students_studnumber_key16 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key16 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key16;
       public            postgres    false    222            �           2606    39649 "   students students_studnumber_key17 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key17 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key17;
       public            postgres    false    222            �           2606    39651 "   students students_studnumber_key18 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key18 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key18;
       public            postgres    false    222            �           2606    39563 "   students students_studnumber_key19 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key19 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key19;
       public            postgres    false    222            �           2606    39597 !   students students_studnumber_key2 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key2 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key2;
       public            postgres    false    222            �           2606    39591 "   students students_studnumber_key20 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key20 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key20;
       public            postgres    false    222            �           2606    39565 "   students students_studnumber_key21 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key21 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key21;
       public            postgres    false    222            �           2606    39567 "   students students_studnumber_key22 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key22 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key22;
       public            postgres    false    222            �           2606    39573 "   students students_studnumber_key23 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key23 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key23;
       public            postgres    false    222            �           2606    39575 "   students students_studnumber_key24 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key24 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key24;
       public            postgres    false    222            �           2606    39585 "   students students_studnumber_key25 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key25 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key25;
       public            postgres    false    222            �           2606    39577 "   students students_studnumber_key26 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key26 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key26;
       public            postgres    false    222            �           2606    39579 "   students students_studnumber_key27 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key27 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key27;
       public            postgres    false    222            �           2606    39581 "   students students_studnumber_key28 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key28 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key28;
       public            postgres    false    222            �           2606    39583 "   students students_studnumber_key29 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key29 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key29;
       public            postgres    false    222            �           2606    39599 !   students students_studnumber_key3 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key3 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key3;
       public            postgres    false    222            �           2606    39569 "   students students_studnumber_key30 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key30 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key30;
       public            postgres    false    222            �           2606    39571 "   students students_studnumber_key31 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key31 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key31;
       public            postgres    false    222            �           2606    39627 "   students students_studnumber_key32 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key32 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key32;
       public            postgres    false    222            �           2606    39625 "   students students_studnumber_key33 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key33 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key33;
       public            postgres    false    222            �           2606    39587 "   students students_studnumber_key34 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key34 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key34;
       public            postgres    false    222            �           2606    39589 "   students students_studnumber_key35 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key35 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key35;
       public            postgres    false    222            �           2606    39653 "   students students_studnumber_key36 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key36 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key36;
       public            postgres    false    222            �           2606    39655 "   students students_studnumber_key37 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key37 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key37;
       public            postgres    false    222            �           2606    39657 "   students students_studnumber_key38 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key38 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key38;
       public            postgres    false    222            �           2606    39659 "   students students_studnumber_key39 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key39 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key39;
       public            postgres    false    222            �           2606    39619 !   students students_studnumber_key4 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key4 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key4;
       public            postgres    false    222            �           2606    39661 "   students students_studnumber_key40 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key40 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key40;
       public            postgres    false    222            �           2606    39545 "   students students_studnumber_key41 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key41 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key41;
       public            postgres    false    222            �           2606    39547 "   students students_studnumber_key42 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key42 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key42;
       public            postgres    false    222            �           2606    39561 "   students students_studnumber_key43 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key43 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key43;
       public            postgres    false    222            �           2606    39549 "   students students_studnumber_key44 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key44 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key44;
       public            postgres    false    222            �           2606    39551 "   students students_studnumber_key45 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key45 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key45;
       public            postgres    false    222                       2606    39553 "   students students_studnumber_key46 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key46 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key46;
       public            postgres    false    222                       2606    39555 "   students students_studnumber_key47 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key47 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key47;
       public            postgres    false    222                       2606    39557 "   students students_studnumber_key48 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key48 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key48;
       public            postgres    false    222                       2606    39559 "   students students_studnumber_key49 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key49 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key49;
       public            postgres    false    222            	           2606    39621 !   students students_studnumber_key5 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key5 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key5;
       public            postgres    false    222                       2606    39601 "   students students_studnumber_key50 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key50 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key50;
       public            postgres    false    222                       2606    39603 "   students students_studnumber_key51 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key51 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key51;
       public            postgres    false    222                       2606    39617 "   students students_studnumber_key52 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key52 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key52;
       public            postgres    false    222                       2606    39615 "   students students_studnumber_key53 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key53 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key53;
       public            postgres    false    222                       2606    39605 "   students students_studnumber_key54 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key54 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key54;
       public            postgres    false    222                       2606    39607 "   students students_studnumber_key55 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key55 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key55;
       public            postgres    false    222                       2606    39613 "   students students_studnumber_key56 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key56 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key56;
       public            postgres    false    222                       2606    39609 "   students students_studnumber_key57 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key57 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key57;
       public            postgres    false    222                       2606    39611 "   students students_studnumber_key58 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key58 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key58;
       public            postgres    false    222                       2606    39663 "   students students_studnumber_key59 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key59 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key59;
       public            postgres    false    222                       2606    39623 !   students students_studnumber_key6 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key6 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key6;
       public            postgres    false    222            !           2606    39665 "   students students_studnumber_key60 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key60 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key60;
       public            postgres    false    222            #           2606    39667 "   students students_studnumber_key61 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key61 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key61;
       public            postgres    false    222            %           2606    39543 "   students students_studnumber_key62 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key62 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key62;
       public            postgres    false    222            '           2606    39669 "   students students_studnumber_key63 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key63 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key63;
       public            postgres    false    222            )           2606    39671 "   students students_studnumber_key64 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key64 UNIQUE (studnumber);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key64;
       public            postgres    false    222            +           2606    39629 !   students students_studnumber_key7 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key7 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key7;
       public            postgres    false    222            -           2606    39631 !   students students_studnumber_key8 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key8 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key8;
       public            postgres    false    222            /           2606    39633 !   students students_studnumber_key9 
   CONSTRAINT     b   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_studnumber_key9 UNIQUE (studnumber);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_studnumber_key9;
       public            postgres    false    222            1           2606    16474    studentsfree studentsfree_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.studentsfree
    ADD CONSTRAINT studentsfree_pk PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.studentsfree DROP CONSTRAINT studentsfree_pk;
       public            postgres    false    224            3           2606    16476     studentsrating studentsrating_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.studentsrating
    ADD CONSTRAINT studentsrating_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.studentsrating DROP CONSTRAINT studentsrating_pk;
       public            postgres    false    227            5           2606    16478    studentssad studentssad_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.studentssad
    ADD CONSTRAINT studentssad_pk PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.studentssad DROP CONSTRAINT studentssad_pk;
       public            postgres    false    229            7           2606    16480 $   studentsvacation studentsvacation_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.studentsvacation
    ADD CONSTRAINT studentsvacation_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.studentsvacation DROP CONSTRAINT studentsvacation_pk;
       public            postgres    false    231            n           2606    39535 "   rating rating_ratingcoursesid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_ratingcoursesid_fkey FOREIGN KEY (ratingcoursesid) REFERENCES public.ratingcourses(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_ratingcoursesid_fkey;
       public          postgres    false    215    3243    220            o           2606    39510 %   ratingcount ratingcount_courseid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratingcount
    ADD CONSTRAINT ratingcount_courseid_fkey FOREIGN KEY (courseid) REFERENCES public.courses(id) ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY public.ratingcount DROP CONSTRAINT ratingcount_courseid_fkey;
       public          postgres    false    217    211    3235            p           2606    39515 #   ratingcount ratingcount_dateid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratingcount
    ADD CONSTRAINT ratingcount_dateid_fkey FOREIGN KEY (dateid) REFERENCES public.datetable(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.ratingcount DROP CONSTRAINT ratingcount_dateid_fkey;
       public          postgres    false    213    217    3237            q           2606    39500 )   ratingcourses ratingcourses_courseid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratingcourses
    ADD CONSTRAINT ratingcourses_courseid_fkey FOREIGN KEY (courseid) REFERENCES public.courses(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.ratingcourses DROP CONSTRAINT ratingcourses_courseid_fkey;
       public          postgres    false    220    3235    211            r           2606    39505 (   ratingcourses ratingcourses_levelid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratingcourses
    ADD CONSTRAINT ratingcourses_levelid_fkey FOREIGN KEY (levelid) REFERENCES public.courselevels(id) ON UPDATE CASCADE ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.ratingcourses DROP CONSTRAINT ratingcourses_levelid_fkey;
       public          postgres    false    3233    209    220            s           2606    39530 %   studentsfree studentsfree_dateid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentsfree
    ADD CONSTRAINT studentsfree_dateid_fkey FOREIGN KEY (dateid) REFERENCES public.datetable(id) ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY public.studentsfree DROP CONSTRAINT studentsfree_dateid_fkey;
       public          postgres    false    213    224    3237            v           2606    39682 )   studentsrating studentsrating_dateid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentsrating
    ADD CONSTRAINT studentsrating_dateid_fkey FOREIGN KEY (dateid) REFERENCES public.datetable(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.studentsrating DROP CONSTRAINT studentsrating_dateid_fkey;
       public          postgres    false    213    227    3237            u           2606    39677 ,   studentsrating studentsrating_reatingid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentsrating
    ADD CONSTRAINT studentsrating_reatingid_fkey FOREIGN KEY (reatingid) REFERENCES public.rating(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.studentsrating DROP CONSTRAINT studentsrating_reatingid_fkey;
       public          postgres    false    3239    215    227            t           2606    39672 ,   studentsrating studentsrating_studentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentsrating
    ADD CONSTRAINT studentsrating_studentid_fkey FOREIGN KEY (studentid) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.studentsrating DROP CONSTRAINT studentsrating_studentid_fkey;
       public          postgres    false    3245    227    222            w           2606    39520 #   studentssad studentssad_dateid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentssad
    ADD CONSTRAINT studentssad_dateid_fkey FOREIGN KEY (dateid) REFERENCES public.datetable(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.studentssad DROP CONSTRAINT studentssad_dateid_fkey;
       public          postgres    false    229    213    3237            x           2606    39525 -   studentsvacation studentsvacation_dateid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentsvacation
    ADD CONSTRAINT studentsvacation_dateid_fkey FOREIGN KEY (dateid) REFERENCES public.datetable(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public.studentsvacation DROP CONSTRAINT studentsvacation_dateid_fkey;
       public          postgres    false    3237    231    213               x   x�+-N-r�M���K���,��/�T1JR14P)���0(��-*,t3�0ˏLOOuζ�3+�w/�20)L�0M����.�+MwM-�4202�54�54V02�25�2��30��6������� �q �            x�3�4�2�4�2�4�2�4����� i�         0   x�3�0�S��8/,RƜ)��.,2L9/�R1z\\\ ̸�            x������ � �      
      x������ � �            x������ � �         .   x�ȱ  ���)`���oN��b�b�L�M�C�ˎ�,�P?���            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     