PGDMP  7    -                |           academy    16.3    16.3 g    :           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ;           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            <           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            =           1262    16398    academy    DATABASE     ~   CREATE DATABASE academy WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Ukrainian_Ukraine.1251';
    DROP DATABASE academy;
                postgres    false            �            1259    16465    curators    TABLE     �   CREATE TABLE public.curators (
    id integer NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL
);
    DROP TABLE public.curators;
       public         heap    postgres    false            �            1259    16464    curators_id_seq    SEQUENCE     �   CREATE SEQUENCE public.curators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.curators_id_seq;
       public          postgres    false    222            >           0    0    curators_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.curators_id_seq OWNED BY public.curators.id;
          public          postgres    false    221            �            1259    16430    departments    TABLE     y  CREATE TABLE public.departments (
    id integer NOT NULL,
    building integer NOT NULL,
    financing numeric DEFAULT 0 NOT NULL,
    name character varying(100) NOT NULL,
    facultyid integer NOT NULL,
    CONSTRAINT departments_building_check CHECK (((building >= 1) AND (building <= 5))),
    CONSTRAINT departments_financing_check CHECK ((financing >= (0)::numeric))
);
    DROP TABLE public.departments;
       public         heap    postgres    false            �            1259    16429    departments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.departments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.departments_id_seq;
       public          postgres    false    218            ?           0    0    departments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.departments_id_seq OWNED BY public.departments.id;
          public          postgres    false    217            �            1259    16420 	   faculties    TABLE     �   CREATE TABLE public.faculties (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    CONSTRAINT faculties_name_check CHECK (((name)::text <> ''::text))
);
    DROP TABLE public.faculties;
       public         heap    postgres    false            �            1259    16419    faculties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faculties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.faculties_id_seq;
       public          postgres    false    216            @           0    0    faculties_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.faculties_id_seq OWNED BY public.faculties.id;
          public          postgres    false    215            �            1259    16449    groups    TABLE     R  CREATE TABLE public.groups (
    id integer NOT NULL,
    name character varying(10) NOT NULL,
    rating integer NOT NULL,
    year integer NOT NULL,
    departmentid integer NOT NULL,
    CONSTRAINT groups_rating_check CHECK (((rating >= 0) AND (rating <= 5))),
    CONSTRAINT groups_year_check CHECK (((year >= 1) AND (year <= 5)))
);
    DROP TABLE public.groups;
       public         heap    postgres    false            �            1259    16448    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.groups_id_seq;
       public          postgres    false    220            A           0    0    groups_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;
          public          postgres    false    219            �            1259    16474    groupscurators    TABLE     ~   CREATE TABLE public.groupscurators (
    id integer NOT NULL,
    curatorid integer NOT NULL,
    groupid integer NOT NULL
);
 "   DROP TABLE public.groupscurators;
       public         heap    postgres    false            �            1259    16473    groupscurators_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groupscurators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.groupscurators_id_seq;
       public          postgres    false    224            B           0    0    groupscurators_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.groupscurators_id_seq OWNED BY public.groupscurators.id;
          public          postgres    false    223            �            1259    16537    groupslectures    TABLE     ~   CREATE TABLE public.groupslectures (
    id integer NOT NULL,
    groupid integer NOT NULL,
    lectureid integer NOT NULL
);
 "   DROP TABLE public.groupslectures;
       public         heap    postgres    false            �            1259    16571    groupslectures1    TABLE        CREATE TABLE public.groupslectures1 (
    id integer NOT NULL,
    groupid integer NOT NULL,
    lectureid integer NOT NULL
);
 #   DROP TABLE public.groupslectures1;
       public         heap    postgres    false            �            1259    16570    groupslectures1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groupslectures1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.groupslectures1_id_seq;
       public          postgres    false    238            C           0    0    groupslectures1_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.groupslectures1_id_seq OWNED BY public.groupslectures1.id;
          public          postgres    false    237            �            1259    16536    groupslectures_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groupslectures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.groupslectures_id_seq;
       public          postgres    false    234            D           0    0    groupslectures_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.groupslectures_id_seq OWNED BY public.groupslectures.id;
          public          postgres    false    233            �            1259    16554    groupsstudents    TABLE     ~   CREATE TABLE public.groupsstudents (
    id integer NOT NULL,
    groupid integer NOT NULL,
    studentid integer NOT NULL
);
 "   DROP TABLE public.groupsstudents;
       public         heap    postgres    false            �            1259    16553    groupsstudents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groupsstudents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.groupsstudents_id_seq;
       public          postgres    false    236            E           0    0    groupsstudents_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.groupsstudents_id_seq OWNED BY public.groupsstudents.id;
          public          postgres    false    235            �            1259    16519    lectures    TABLE     �   CREATE TABLE public.lectures (
    id integer NOT NULL,
    date date NOT NULL,
    subjectid integer NOT NULL,
    teacherid integer NOT NULL,
    CONSTRAINT lectures_date_check CHECK ((date <= CURRENT_DATE))
);
    DROP TABLE public.lectures;
       public         heap    postgres    false            �            1259    16518    lectures_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lectures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.lectures_id_seq;
       public          postgres    false    232            F           0    0    lectures_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.lectures_id_seq OWNED BY public.lectures.id;
          public          postgres    false    231            �            1259    16491    students    TABLE     �   CREATE TABLE public.students (
    id integer NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    rating integer NOT NULL,
    CONSTRAINT students_rating_check CHECK (((rating >= 0) AND (rating <= 5)))
);
    DROP TABLE public.students;
       public         heap    postgres    false            �            1259    16490    students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public          postgres    false    226            G           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public          postgres    false    225            �            1259    16501    subjects    TABLE     d   CREATE TABLE public.subjects (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.subjects;
       public         heap    postgres    false            �            1259    16500    subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.subjects_id_seq;
       public          postgres    false    228            H           0    0    subjects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;
          public          postgres    false    227            �            1259    16508    teachers    TABLE       CREATE TABLE public.teachers (
    id integer NOT NULL,
    isprofessor boolean DEFAULT false NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    salary numeric NOT NULL,
    CONSTRAINT teachers_salary_check CHECK ((salary > (0)::numeric))
);
    DROP TABLE public.teachers;
       public         heap    postgres    false            �            1259    16507    teachers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.teachers_id_seq;
       public          postgres    false    230            I           0    0    teachers_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;
          public          postgres    false    229            U           2604    16468    curators id    DEFAULT     j   ALTER TABLE ONLY public.curators ALTER COLUMN id SET DEFAULT nextval('public.curators_id_seq'::regclass);
 :   ALTER TABLE public.curators ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            R           2604    16433    departments id    DEFAULT     p   ALTER TABLE ONLY public.departments ALTER COLUMN id SET DEFAULT nextval('public.departments_id_seq'::regclass);
 =   ALTER TABLE public.departments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            Q           2604    16423    faculties id    DEFAULT     l   ALTER TABLE ONLY public.faculties ALTER COLUMN id SET DEFAULT nextval('public.faculties_id_seq'::regclass);
 ;   ALTER TABLE public.faculties ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            T           2604    16452 	   groups id    DEFAULT     f   ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);
 8   ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            V           2604    16477    groupscurators id    DEFAULT     v   ALTER TABLE ONLY public.groupscurators ALTER COLUMN id SET DEFAULT nextval('public.groupscurators_id_seq'::regclass);
 @   ALTER TABLE public.groupscurators ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            \           2604    16540    groupslectures id    DEFAULT     v   ALTER TABLE ONLY public.groupslectures ALTER COLUMN id SET DEFAULT nextval('public.groupslectures_id_seq'::regclass);
 @   ALTER TABLE public.groupslectures ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            ^           2604    16574    groupslectures1 id    DEFAULT     x   ALTER TABLE ONLY public.groupslectures1 ALTER COLUMN id SET DEFAULT nextval('public.groupslectures1_id_seq'::regclass);
 A   ALTER TABLE public.groupslectures1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            ]           2604    16557    groupsstudents id    DEFAULT     v   ALTER TABLE ONLY public.groupsstudents ALTER COLUMN id SET DEFAULT nextval('public.groupsstudents_id_seq'::regclass);
 @   ALTER TABLE public.groupsstudents ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            [           2604    16522    lectures id    DEFAULT     j   ALTER TABLE ONLY public.lectures ALTER COLUMN id SET DEFAULT nextval('public.lectures_id_seq'::regclass);
 :   ALTER TABLE public.lectures ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            W           2604    16494    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            X           2604    16504    subjects id    DEFAULT     j   ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);
 :   ALTER TABLE public.subjects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            Y           2604    16511    teachers id    DEFAULT     j   ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);
 :   ALTER TABLE public.teachers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            '          0    16465    curators 
   TABLE DATA           5   COPY public.curators (id, name, surname) FROM stdin;
    public          postgres    false    222   ]w       #          0    16430    departments 
   TABLE DATA           O   COPY public.departments (id, building, financing, name, facultyid) FROM stdin;
    public          postgres    false    218   �w       !          0    16420 	   faculties 
   TABLE DATA           -   COPY public.faculties (id, name) FROM stdin;
    public          postgres    false    216   �x       %          0    16449    groups 
   TABLE DATA           F   COPY public.groups (id, name, rating, year, departmentid) FROM stdin;
    public          postgres    false    220   �y       )          0    16474    groupscurators 
   TABLE DATA           @   COPY public.groupscurators (id, curatorid, groupid) FROM stdin;
    public          postgres    false    224   �z       3          0    16537    groupslectures 
   TABLE DATA           @   COPY public.groupslectures (id, groupid, lectureid) FROM stdin;
    public          postgres    false    234   u{       7          0    16571    groupslectures1 
   TABLE DATA           A   COPY public.groupslectures1 (id, groupid, lectureid) FROM stdin;
    public          postgres    false    238   �{       5          0    16554    groupsstudents 
   TABLE DATA           @   COPY public.groupsstudents (id, groupid, studentid) FROM stdin;
    public          postgres    false    236   �|       1          0    16519    lectures 
   TABLE DATA           B   COPY public.lectures (id, date, subjectid, teacherid) FROM stdin;
    public          postgres    false    232   }       +          0    16491    students 
   TABLE DATA           =   COPY public.students (id, name, surname, rating) FROM stdin;
    public          postgres    false    226   W~       -          0    16501    subjects 
   TABLE DATA           ,   COPY public.subjects (id, name) FROM stdin;
    public          postgres    false    228   ڀ       /          0    16508    teachers 
   TABLE DATA           J   COPY public.teachers (id, isprofessor, name, surname, salary) FROM stdin;
    public          postgres    false    230   ��       J           0    0    curators_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.curators_id_seq', 10, true);
          public          postgres    false    221            K           0    0    departments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.departments_id_seq', 12, true);
          public          postgres    false    217            L           0    0    faculties_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.faculties_id_seq', 24, true);
          public          postgres    false    215            M           0    0    groups_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.groups_id_seq', 32, true);
          public          postgres    false    219            N           0    0    groupscurators_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.groupscurators_id_seq', 32, true);
          public          postgres    false    223            O           0    0    groupslectures1_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.groupslectures1_id_seq', 480, true);
          public          postgres    false    237            P           0    0    groupslectures_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.groupslectures_id_seq', 1, false);
          public          postgres    false    233            Q           0    0    groupsstudents_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.groupsstudents_id_seq', 1, true);
          public          postgres    false    235            R           0    0    lectures_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.lectures_id_seq', 53, true);
          public          postgres    false    231            S           0    0    students_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.students_id_seq', 59, true);
          public          postgres    false    225            T           0    0    subjects_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.subjects_id_seq', 48, true);
          public          postgres    false    227            U           0    0    teachers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.teachers_id_seq', 29, true);
          public          postgres    false    229            t           2606    16472    curators curators_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.curators
    ADD CONSTRAINT curators_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.curators DROP CONSTRAINT curators_pkey;
       public            postgres    false    222            l           2606    16442     departments departments_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_name_key UNIQUE (name);
 J   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_name_key;
       public            postgres    false    218            n           2606    16440    departments departments_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    218            h           2606    16428    faculties faculties_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.faculties
    ADD CONSTRAINT faculties_name_key UNIQUE (name);
 F   ALTER TABLE ONLY public.faculties DROP CONSTRAINT faculties_name_key;
       public            postgres    false    216            j           2606    16426    faculties faculties_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.faculties
    ADD CONSTRAINT faculties_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.faculties DROP CONSTRAINT faculties_pkey;
       public            postgres    false    216            p           2606    16458    groups groups_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_name_key;
       public            postgres    false    220            r           2606    16456    groups groups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public            postgres    false    220            v           2606    16479 "   groupscurators groupscurators_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.groupscurators
    ADD CONSTRAINT groupscurators_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.groupscurators DROP CONSTRAINT groupscurators_pkey;
       public            postgres    false    224            �           2606    16576 $   groupslectures1 groupslectures1_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.groupslectures1
    ADD CONSTRAINT groupslectures1_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.groupslectures1 DROP CONSTRAINT groupslectures1_pkey;
       public            postgres    false    238            �           2606    16542 "   groupslectures groupslectures_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.groupslectures
    ADD CONSTRAINT groupslectures_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.groupslectures DROP CONSTRAINT groupslectures_pkey;
       public            postgres    false    234            �           2606    16559 "   groupsstudents groupsstudents_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.groupsstudents
    ADD CONSTRAINT groupsstudents_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.groupsstudents DROP CONSTRAINT groupsstudents_pkey;
       public            postgres    false    236            ~           2606    16525    lectures lectures_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.lectures
    ADD CONSTRAINT lectures_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.lectures DROP CONSTRAINT lectures_pkey;
       public            postgres    false    232            x           2606    16499    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    226            z           2606    16506    subjects subjects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pkey;
       public            postgres    false    228            |           2606    16517    teachers teachers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.teachers DROP CONSTRAINT teachers_pkey;
       public            postgres    false    230            �           2606    16443 &   departments departments_facultyid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_facultyid_fkey FOREIGN KEY (facultyid) REFERENCES public.faculties(id);
 P   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_facultyid_fkey;
       public          postgres    false    218    4714    216            �           2606    16459    groups groups_departmentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_departmentid_fkey FOREIGN KEY (departmentid) REFERENCES public.groups(id);
 I   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_departmentid_fkey;
       public          postgres    false    4722    220    220            �           2606    16480 ,   groupscurators groupscurators_curatorid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.groupscurators
    ADD CONSTRAINT groupscurators_curatorid_fkey FOREIGN KEY (curatorid) REFERENCES public.curators(id);
 V   ALTER TABLE ONLY public.groupscurators DROP CONSTRAINT groupscurators_curatorid_fkey;
       public          postgres    false    222    4724    224            �           2606    16485 *   groupscurators groupscurators_groupid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.groupscurators
    ADD CONSTRAINT groupscurators_groupid_fkey FOREIGN KEY (groupid) REFERENCES public.groups(id);
 T   ALTER TABLE ONLY public.groupscurators DROP CONSTRAINT groupscurators_groupid_fkey;
       public          postgres    false    4722    220    224            �           2606    16577 ,   groupslectures1 groupslectures1_groupid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.groupslectures1
    ADD CONSTRAINT groupslectures1_groupid_fkey FOREIGN KEY (groupid) REFERENCES public.groups(id);
 V   ALTER TABLE ONLY public.groupslectures1 DROP CONSTRAINT groupslectures1_groupid_fkey;
       public          postgres    false    4722    238    220            �           2606    16582 .   groupslectures1 groupslectures1_lectureid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.groupslectures1
    ADD CONSTRAINT groupslectures1_lectureid_fkey FOREIGN KEY (lectureid) REFERENCES public.lectures(id);
 X   ALTER TABLE ONLY public.groupslectures1 DROP CONSTRAINT groupslectures1_lectureid_fkey;
       public          postgres    false    238    232    4734            �           2606    16543 *   groupslectures groupslectures_groupid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.groupslectures
    ADD CONSTRAINT groupslectures_groupid_fkey FOREIGN KEY (groupid) REFERENCES public.groups(id);
 T   ALTER TABLE ONLY public.groupslectures DROP CONSTRAINT groupslectures_groupid_fkey;
       public          postgres    false    234    4722    220            �           2606    16548 ,   groupslectures groupslectures_lectureid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.groupslectures
    ADD CONSTRAINT groupslectures_lectureid_fkey FOREIGN KEY (lectureid) REFERENCES public.lectures(id);
 V   ALTER TABLE ONLY public.groupslectures DROP CONSTRAINT groupslectures_lectureid_fkey;
       public          postgres    false    4734    232    234            �           2606    16560 *   groupsstudents groupsstudents_groupid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.groupsstudents
    ADD CONSTRAINT groupsstudents_groupid_fkey FOREIGN KEY (groupid) REFERENCES public.groups(id);
 T   ALTER TABLE ONLY public.groupsstudents DROP CONSTRAINT groupsstudents_groupid_fkey;
       public          postgres    false    4722    236    220            �           2606    16565 ,   groupsstudents groupsstudents_studentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.groupsstudents
    ADD CONSTRAINT groupsstudents_studentid_fkey FOREIGN KEY (studentid) REFERENCES public.students(id);
 V   ALTER TABLE ONLY public.groupsstudents DROP CONSTRAINT groupsstudents_studentid_fkey;
       public          postgres    false    226    4728    236            �           2606    16526     lectures lectures_subjectid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lectures
    ADD CONSTRAINT lectures_subjectid_fkey FOREIGN KEY (subjectid) REFERENCES public.subjects(id);
 J   ALTER TABLE ONLY public.lectures DROP CONSTRAINT lectures_subjectid_fkey;
       public          postgres    false    228    232    4730            �           2606    16531     lectures lectures_teacherid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lectures
    ADD CONSTRAINT lectures_teacherid_fkey FOREIGN KEY (teacherid) REFERENCES public.teachers(id);
 J   ALTER TABLE ONLY public.lectures DROP CONSTRAINT lectures_teacherid_fkey;
       public          postgres    false    230    232    4732            '   �   x���
�PD�ُ��V!��66k�x��&�~��t��L�:��cZ��(h���8����)�
�v����+�Lk�l�p����_�!J�-.<���)���а�K�T.�7}��T��$O;��3"��0[      #   �   x�m�=n�0��<�O���ڴH�0�5� ����4$e��K%@���H�Q>��}\�+��N�l�h}u1ή��ʴ-鯎�]tt&��:+U�iN!�P0�4J��'h�2����o	Z�@z�ߒ��a/�/�����mN��C��|^y��8fӔ���st|x#�Q������8�	"hv_=�d��aDH��ʰ�V�"�R��4      !     x�U��N�0���S�	��B)ZT�.\,gIVM��@~{6)B���h���\l��c*5�<�r���wm��lp��\����%�⍺%Y�)���'��w��&A��}-�"���������4��#	������0
e�9�T0k��n�{�|F��^N`X���Y7PB�r�!��Y.a�ͪ���e�*{h�:�e������I8�צ�Fh�v$��#�j��4[��h��*��X�ɗ�ȑ��������%���~^�/ �^      %   �   x�-��m�0г8LJv�?A��-
t���<	4,�Yf}�~���],����rc��Fy��W���N~�k�L>u�v�J��'��[�u]x%���n�x/���z�̂�2�!�D�H�� ���Ԋ�⤝#7����FJKu0*M]zc��jit�m���:�6V@���E�`���X�֭�t�m������?�ѡ��3�U�#�B����L���8�'����;�ɪ���?�0tG      )   x   x����@��:��I��\�+Z_�R	�D�Ī��&���k⩉�&t�>��E�Q5�����D�t�X�Q4=(�^�A8�gўdЍz�>q@_8�o���`t�������!H      3      x������ � �      7   =  x�%�ɑ�0��r0[:H�L�ql��C����fm�o�L�,�Y�2�HOO8�	`��)ZTJ �N�e�`�@)zo�} �)pZ�T
 ���n�`����4: 3��4f�t[&\@�dT�&܁\o��3��Q�hûĜ&܂\u#��	�!W�Ȫׄ{u�F��	7!Wݨ�V�p	��Fʹ�	w!Wݨ����b@��c�.����׬�b�pr�T�g�K��5�xm�ӄ[��n�V�&܆\u���k�=��u���Ä���n�V;L��\�xm��	w!Wݨ�N7ɝQ�>��:˄�U/W[�m�ȕU�I��C�����ݓ�W      5      x�3�4�4����� �Y      1   E  x�]��u�0C�B/�'nZzI�uT�=7��޴��z��7��������Y4Ǹ�4�T�-�Y&�-��=�}%>ZH���y6���F3S�VM�����v3�	���V#��D��8�!�@�ح ���U1����4[�>	$	�h�k@/AB��Z!�C��p��T���qF���s��&	�!hI�Xd9Ԥ�c�ӊOr2Xa��y�ug��&۹��{L�� ��	�&E^@qX	�#wj��i��R�K��zo�x�[�=1ý��K�(�Gj�j'2�]u�<�v��"'���-�\���ĵ=I��)�Vʹv>�")o|����      +   s  x�U��n�0��ˇ)L����I����q �E/��ZL(2�d���wV���$�"gf?�J�]��DKJdtg��M�ڊ��iQ;�v41P.�]Q�i�w�n(�6&���R|PӍ9�ǂm 3��9$C�&�@eJ�qgSKk�Z�;Df�����Ln��r�<54X�����r�4H�M���%	?9�2�+�v�D�&=r�Tғ9���(��И@�P��G�8F�ƾV�T��4�0��&���L��!8�k�y��V��l;�RrM_+d[���d#�̮�I/p�$��f�
��G �j���ӻ#\{����G�=Wk��,�Й�������Bm�.�f�At7Е"ѕϦv�W�\b�m.�m�g�h��g[p�⠢����\�f"G�����w��g]�L���X�M����G�O�V��+J���m+��%i%ͦm���*;���x�=���_䙃��RC�_��|FC�t��t��q9[ �Zv��|���y�@�ތ�TB����g쇃�zDz!%4�d���n|ww:�U܃��M��輻��M����h��J�L�F�ܳso�â��P�&���'���k��v�����8[��O şoB���r=�      -   �  x�]Rˎ�0<�_�/("�N�c�f�Xd��i{(z�*�MԖ=Z��K%N��MC��������Q'2%�)���W)�0a[��&l��K�kK�d}���p{��\J6蔃�5���/]b�8���$���i���/���!�E�`�R�e�aLog�0J�]�X�V7p����>i�7k���zɑ-[����Q�b��.%�]G��@�C�
(�(kاޑ�N)��rd<�0��%w.N�<[=���M���s`G�k8�?���2��*��̈́_6J�kf3�|�)P"�P�p����s��؁:�9>$�廴�
N��=�����j����7�c��S���a3���8j	O>X�\u�,Zwk5��ߟ��W�5'�~�f�.�Z7�eO��Xmμ����%���)��Q�Q;�\���3����P:�U      /   �  x�5�Qo�0���3-�����jhWWt����.i29a����!���9�w\��)�����_U��^C?�d�Y�8�;;�.��ࡓ����?�uW8X�,N�Z
-z$4�@��Y�:g�~ّm����ގ{_�L�H�Eh����ᨉ�#%��w�YB��sF�g�t3�������2'*�d��#2�s����٩l.��ɕ�x@:2�B�߀� �%��.PII�l֟#zX�QS6�$j�������	Ƃ��&�����I�A�[��0c�.q�%?Z�1�O�,[$Ԝ@-	l�[���!�~��n5�d�/���t��3��,3d����O�����-\7rA}r�-:Wk��&PH�
+N�)�R�S2�o��?�Rw���p��������[��&A;��2�/"�CH����UU��߼�     