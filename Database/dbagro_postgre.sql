PGDMP     ,    :                {            GESTIONAGRO    15.2    15.2 2    &           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            '           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            (           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            )           1262    16398    GESTIONAGRO    DATABASE     �   CREATE DATABASE "GESTIONAGRO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "GESTIONAGRO";
                postgres    false            �            1259    16453    PERFILES    TABLE     �   CREATE TABLE public."PERFILES" (
    perfil_id bigint NOT NULL,
    perfil_nombre character varying(128) NOT NULL,
    perfil_estado boolean NOT NULL,
    perfil_desc character varying
);
    DROP TABLE public."PERFILES";
       public         heap    postgres    false            �            1259    16452    PERFIL_PERFIL_ID_seq    SEQUENCE        CREATE SEQUENCE public."PERFIL_PERFIL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."PERFIL_PERFIL_ID_seq";
       public          postgres    false    220            *           0    0    PERFIL_PERFIL_ID_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."PERFIL_PERFIL_ID_seq" OWNED BY public."PERFILES".perfil_id;
          public          postgres    false    219            �            1259    16438    PERSONAS_EMPRESAS    TABLE     x   CREATE TABLE public."PERSONAS_EMPRESAS" (
    persona_empresa_id bigint NOT NULL,
    identificacion bigint NOT NULL
);
 '   DROP TABLE public."PERSONAS_EMPRESAS";
       public         heap    postgres    false            �            1259    16437 "   PERSONA_EMPRESA_IDENTIFICACION_seq    SEQUENCE     �   CREATE SEQUENCE public."PERSONA_EMPRESA_IDENTIFICACION_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."PERSONA_EMPRESA_IDENTIFICACION_seq";
       public          postgres    false    216            +           0    0 "   PERSONA_EMPRESA_IDENTIFICACION_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."PERSONA_EMPRESA_IDENTIFICACION_seq" OWNED BY public."PERSONAS_EMPRESAS".identificacion;
          public          postgres    false    215            �            1259    16436 &   PERSONA_EMPRESA_PERSONA_EMPRESA_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."PERSONA_EMPRESA_PERSONA_EMPRESA_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."PERSONA_EMPRESA_PERSONA_EMPRESA_ID_seq";
       public          postgres    false    216            ,           0    0 &   PERSONA_EMPRESA_PERSONA_EMPRESA_ID_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."PERSONA_EMPRESA_PERSONA_EMPRESA_ID_seq" OWNED BY public."PERSONAS_EMPRESAS".persona_empresa_id;
          public          postgres    false    214            �            1259    24584 '   PERSONA_EMPRESA_PERSONA_EMPRESA_ID_seq1    SEQUENCE     �   ALTER TABLE public."PERSONAS_EMPRESAS" ALTER COLUMN persona_empresa_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."PERSONA_EMPRESA_PERSONA_EMPRESA_ID_seq1"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16446    USUARIOS    TABLE     �   CREATE TABLE public."USUARIOS" (
    usuario_id bigint NOT NULL,
    username character varying(122) NOT NULL,
    usuario_estado boolean NOT NULL,
    persona_empresa_id bigint NOT NULL
);
    DROP TABLE public."USUARIOS";
       public         heap    postgres    false            �            1259    16463    USUARIOS_PERFILES    TABLE     �   CREATE TABLE public."USUARIOS_PERFILES" (
    usuario_id bigint NOT NULL,
    perfil_id bigint NOT NULL,
    usuario_perfil_estado boolean NOT NULL
);
 '   DROP TABLE public."USUARIOS_PERFILES";
       public         heap    postgres    false            �            1259    16462    USUARIO_PERFIL_PERFIL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."USUARIO_PERFIL_PERFIL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."USUARIO_PERFIL_PERFIL_ID_seq";
       public          postgres    false    223            -           0    0    USUARIO_PERFIL_PERFIL_ID_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public."USUARIO_PERFIL_PERFIL_ID_seq" OWNED BY public."USUARIOS_PERFILES".perfil_id;
          public          postgres    false    222            �            1259    16461    USUARIO_PERFIL_USUARIO_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."USUARIO_PERFIL_USUARIO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."USUARIO_PERFIL_USUARIO_ID_seq";
       public          postgres    false    223            .           0    0    USUARIO_PERFIL_USUARIO_ID_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public."USUARIO_PERFIL_USUARIO_ID_seq" OWNED BY public."USUARIOS_PERFILES".usuario_id;
          public          postgres    false    221            �            1259    16480    USUARIO_PERSONA_EMPRESA_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."USUARIO_PERSONA_EMPRESA_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."USUARIO_PERSONA_EMPRESA_ID_seq";
       public          postgres    false    218            /           0    0    USUARIO_PERSONA_EMPRESA_ID_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public."USUARIO_PERSONA_EMPRESA_ID_seq" OWNED BY public."USUARIOS".persona_empresa_id;
          public          postgres    false    224            �            1259    16445    USUARIO_USUARIO_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."USUARIO_USUARIO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."USUARIO_USUARIO_ID_seq";
       public          postgres    false    218            0           0    0    USUARIO_USUARIO_ID_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public."USUARIO_USUARIO_ID_seq" OWNED BY public."USUARIOS".usuario_id;
          public          postgres    false    217            {           2604    16456    PERFILES perfil_id    DEFAULT     z   ALTER TABLE ONLY public."PERFILES" ALTER COLUMN perfil_id SET DEFAULT nextval('public."PERFIL_PERFIL_ID_seq"'::regclass);
 C   ALTER TABLE public."PERFILES" ALTER COLUMN perfil_id DROP DEFAULT;
       public          postgres    false    220    219    220            x           2604    16442     PERSONAS_EMPRESAS identificacion    DEFAULT     �   ALTER TABLE ONLY public."PERSONAS_EMPRESAS" ALTER COLUMN identificacion SET DEFAULT nextval('public."PERSONA_EMPRESA_IDENTIFICACION_seq"'::regclass);
 Q   ALTER TABLE public."PERSONAS_EMPRESAS" ALTER COLUMN identificacion DROP DEFAULT;
       public          postgres    false    216    215    216            y           2604    16449    USUARIOS usuario_id    DEFAULT     }   ALTER TABLE ONLY public."USUARIOS" ALTER COLUMN usuario_id SET DEFAULT nextval('public."USUARIO_USUARIO_ID_seq"'::regclass);
 D   ALTER TABLE public."USUARIOS" ALTER COLUMN usuario_id DROP DEFAULT;
       public          postgres    false    217    218    218            z           2604    16481    USUARIOS persona_empresa_id    DEFAULT     �   ALTER TABLE ONLY public."USUARIOS" ALTER COLUMN persona_empresa_id SET DEFAULT nextval('public."USUARIO_PERSONA_EMPRESA_ID_seq"'::regclass);
 L   ALTER TABLE public."USUARIOS" ALTER COLUMN persona_empresa_id DROP DEFAULT;
       public          postgres    false    224    218            |           2604    16466    USUARIOS_PERFILES usuario_id    DEFAULT     �   ALTER TABLE ONLY public."USUARIOS_PERFILES" ALTER COLUMN usuario_id SET DEFAULT nextval('public."USUARIO_PERFIL_USUARIO_ID_seq"'::regclass);
 M   ALTER TABLE public."USUARIOS_PERFILES" ALTER COLUMN usuario_id DROP DEFAULT;
       public          postgres    false    221    223    223            }           2604    16467    USUARIOS_PERFILES perfil_id    DEFAULT     �   ALTER TABLE ONLY public."USUARIOS_PERFILES" ALTER COLUMN perfil_id SET DEFAULT nextval('public."USUARIO_PERFIL_PERFIL_ID_seq"'::regclass);
 L   ALTER TABLE public."USUARIOS_PERFILES" ALTER COLUMN perfil_id DROP DEFAULT;
       public          postgres    false    222    223    223                      0    16453    PERFILES 
   TABLE DATA           Z   COPY public."PERFILES" (perfil_id, perfil_nombre, perfil_estado, perfil_desc) FROM stdin;
    public          postgres    false    220   !;                 0    16438    PERSONAS_EMPRESAS 
   TABLE DATA           Q   COPY public."PERSONAS_EMPRESAS" (persona_empresa_id, identificacion) FROM stdin;
    public          postgres    false    216   >;                 0    16446    USUARIOS 
   TABLE DATA           ^   COPY public."USUARIOS" (usuario_id, username, usuario_estado, persona_empresa_id) FROM stdin;
    public          postgres    false    218   p;       !          0    16463    USUARIOS_PERFILES 
   TABLE DATA           [   COPY public."USUARIOS_PERFILES" (usuario_id, perfil_id, usuario_perfil_estado) FROM stdin;
    public          postgres    false    223   �;       1           0    0    PERFIL_PERFIL_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."PERFIL_PERFIL_ID_seq"', 1, false);
          public          postgres    false    219            2           0    0 "   PERSONA_EMPRESA_IDENTIFICACION_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."PERSONA_EMPRESA_IDENTIFICACION_seq"', 1, false);
          public          postgres    false    215            3           0    0 &   PERSONA_EMPRESA_PERSONA_EMPRESA_ID_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."PERSONA_EMPRESA_PERSONA_EMPRESA_ID_seq"', 1, false);
          public          postgres    false    214            4           0    0 '   PERSONA_EMPRESA_PERSONA_EMPRESA_ID_seq1    SEQUENCE SET     W   SELECT pg_catalog.setval('public."PERSONA_EMPRESA_PERSONA_EMPRESA_ID_seq1"', 1, true);
          public          postgres    false    225            5           0    0    USUARIO_PERFIL_PERFIL_ID_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."USUARIO_PERFIL_PERFIL_ID_seq"', 1, false);
          public          postgres    false    222            6           0    0    USUARIO_PERFIL_USUARIO_ID_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."USUARIO_PERFIL_USUARIO_ID_seq"', 1, false);
          public          postgres    false    221            7           0    0    USUARIO_PERSONA_EMPRESA_ID_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."USUARIO_PERSONA_EMPRESA_ID_seq"', 1, false);
          public          postgres    false    224            8           0    0    USUARIO_USUARIO_ID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."USUARIO_USUARIO_ID_seq"', 1, false);
          public          postgres    false    217            �           2606    16460    PERFILES PERFIL_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."PERFILES"
    ADD CONSTRAINT "PERFIL_pkey" PRIMARY KEY (perfil_id);
 B   ALTER TABLE ONLY public."PERFILES" DROP CONSTRAINT "PERFIL_pkey";
       public            postgres    false    220                       2606    16444 &   PERSONAS_EMPRESAS PERSONA_EMPRESA_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."PERSONAS_EMPRESAS"
    ADD CONSTRAINT "PERSONA_EMPRESA_pkey" PRIMARY KEY (persona_empresa_id);
 T   ALTER TABLE ONLY public."PERSONAS_EMPRESAS" DROP CONSTRAINT "PERSONA_EMPRESA_pkey";
       public            postgres    false    216            �           2606    16451    USUARIOS USUARIO_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."USUARIOS"
    ADD CONSTRAINT "USUARIO_pkey" PRIMARY KEY (usuario_id);
 C   ALTER TABLE ONLY public."USUARIOS" DROP CONSTRAINT "USUARIO_pkey";
       public            postgres    false    218            �           1259    16479    fki_PERFIL_ID    INDEX     T   CREATE INDEX "fki_PERFIL_ID" ON public."USUARIOS_PERFILES" USING btree (perfil_id);
 #   DROP INDEX public."fki_PERFIL_ID";
       public            postgres    false    223            �           1259    16496    fki_PERSONA_EMPRESA_ID    INDEX     ]   CREATE INDEX "fki_PERSONA_EMPRESA_ID" ON public."USUARIOS" USING btree (persona_empresa_id);
 ,   DROP INDEX public."fki_PERSONA_EMPRESA_ID";
       public            postgres    false    218            �           1259    16473    fki_USUARIO_ID    INDEX     V   CREATE INDEX "fki_USUARIO_ID" ON public."USUARIOS_PERFILES" USING btree (usuario_id);
 $   DROP INDEX public."fki_USUARIO_ID";
       public            postgres    false    223            �           2606    16474    USUARIOS_PERFILES PERFIL_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."USUARIOS_PERFILES"
    ADD CONSTRAINT "PERFIL_ID" FOREIGN KEY (perfil_id) REFERENCES public."PERFILES"(perfil_id) NOT VALID;
 I   ALTER TABLE ONLY public."USUARIOS_PERFILES" DROP CONSTRAINT "PERFIL_ID";
       public          postgres    false    220    223    3204            �           2606    16491    USUARIOS PERSONA_EMPRESA_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."USUARIOS"
    ADD CONSTRAINT "PERSONA_EMPRESA_ID" FOREIGN KEY (persona_empresa_id) REFERENCES public."PERSONAS_EMPRESAS"(persona_empresa_id) NOT VALID;
 I   ALTER TABLE ONLY public."USUARIOS" DROP CONSTRAINT "PERSONA_EMPRESA_ID";
       public          postgres    false    218    3199    216            �           2606    16468    USUARIOS_PERFILES USUARIO_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."USUARIOS_PERFILES"
    ADD CONSTRAINT "USUARIO_ID" FOREIGN KEY (usuario_id) REFERENCES public."USUARIOS"(usuario_id) NOT VALID;
 J   ALTER TABLE ONLY public."USUARIOS_PERFILES" DROP CONSTRAINT "USUARIO_ID";
       public          postgres    false    3201    218    223                  x������ � �         "   x�3�4400�41�05�2�pL�,̹b���� Wp@            x������ � �      !      x������ � �     