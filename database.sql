SQLite format 3   @                                                                     -�    �    ���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
   
   ) ���zL*���Z)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         / ;1Can delete content typedelete_contenttype/ ;1Can change content typechange_contenttype)
 5+Can add content typeadd_contenttype 	 +#Can delete userdelete_user, 7/Can delete permissiondelete_permission" -%Can delete groupdelete_group  +#Can change userchange_user, 7/Can change permissionchange_permission" -%Can change groupchange_group %Can add useradd_user& 1)Can add permissionadd_permission 'Can add groupadd_group
   
 ��d��|��R<#
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          1delete_contenttype1change_contenttype+add_contenttype
#delete_user	/delete_permission%delete_group#change_user/change_permission%change_groupadd_user)add_permissionadd_group                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              blah
   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             blah                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  �  ��$q                                                                                                                                                                  �++�Stableauth_permissionauth_permissionCREATE TABLE "auth_permission" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(50) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" varchar(100) NOT NULL,
    UNIQUE ("content_type_id", "codename")
)=Q+ indexsqlite_autoindex_auth_permission_1auth_permission�99�Utableauth_group_permissionsauth_group_permissionsCREATE TABLE "auth_group_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("group_id", "permission_id")
)K_9 indexsqlite_autoindex_auth_group_permissions_1auth_group_permissions�!!�ctableauth_groupauth_groupCREATE TABLE "auth_group" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(80) NOT NULL UNIQUE
)    Cm��                                                                                                                                                                                                                                                            3G! indexsqlite_autoindex_auth_group_1auth_group�'AA�Ytableauth_user_user_permissionsauth_user_user_permissionsCREATE TABLE "auth_user_user_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("user_id", "permission_id")
)SgA indexsqlite_autoindex_auth_user_user_permissions_1auth_user_user_permissions	�z	--�'tableauth_user_groupsauth_user_groupsCREATE TABLE "auth_user_groups" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL REFERENCES "auth_group" ("id"),
    UNIQUE ("user_id", "group_id")
)?
S- indexsqlite_autoindex_auth_user_groups_1auth_user_groups   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  Z�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          �' /�'AAemilyemily@example.compbkdf2_sha256$10000$pUXZAP52Kcaa$AiGIoOA0CslY7n3EehckgR+KUAYilXM6b0EB6eBvUFo=2012-04-10 11:41:20.7032172012-04-10 11:41:20.703217�% -�'AAjanejane@example.compbkdf2_sha256$10000$wl09GA0XOuJt$xRRckQd8fpen7tSMNVLVtwEw/+/UiQyJRCxVZ3aOxEA=2012-04-10 11:41:07.8445802012-04-10 11:41:07.844580�# +�'AAtomtom@example.compbkdf2_sha256$10000$FZinEst3wSir$u6MIa4dtwW7XjZFCDV9Ehizo5pRW2VJRHBQ434iwJOY=2012-04-10 11:40:55.5598742012-04-10 11:40:55.559874
   � ���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       	emilyjanetom    !  !�!2y               �J�ctableauth_userauth_userCREATE TABLE "auth_user" (
    "id" integer NOT NULL PRIMARY KEY,
    "username" varchar(30) NOT NULL UNIQUE,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "email" varchar(75) NOT NULL,
    "password" varchar(128) NOT NULL,
    "is_staff" bool NOT NULL,
    "is_active" bool NOT NULL,
    "is_superuser" bool NOT NULL,
    "last_login" datetime NOT NULL,
    "date_joined" datetime NOT NULL
)1E indexsqlite_autoindex_auth_user_1auth_user�33�Ctabledjango_content_typedjango_content_typeCREATE TABLE "django_content_type" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "app_label" varchar(100) NOT NULL,
    "model" varchar(100) NOT NULL,
    UNIQUE ("app_label", "model")
)EY3 indexsqlite_autoindex_django_content_type_1django_content_type�=+�-indexauth_permission_e4470c6eauth_permissionCREATE INDEX "auth_permission_e4470c6e" ON "auth_permission" ("content_type_id")   � ����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ( %%#content typecontenttypescontenttype userauthuser groupauthgroup !!permissionauthpermission
   � ����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  %#contenttypescontenttypeauthuserauthgroup!authpermission
   � ������������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
	
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  `  ` ��H�|                                                                            �K9�;indexauth_group_permissions_bda51c3cauth_group_permissionsCREATE INDEX "auth_group_permissions_bda51c3c" ON "auth_group_permissions" ("group_id")�K9�Eindexauth_group_permissions_1e014c8fauth_group_permissionsCREATE INDEX "auth_group_permissions_1e014c8f" ON "auth_group_permissions" ("permission_id")�(SA�Iindexauth_user_user_permissions_fbfc09f1auth_user_user_permissionsCREATE INDEX "auth_user_user_permissions_fbfc09f1" ON "auth_user_user_permissions" ("user_id")�.SA�Uindexauth_user_user_permissions_1e014c8fauth_user_user_permissionsCREATE INDEX "auth_user_user_permissions_1e014c8f" ON "auth_user_user_permissions" ("permission_id")� ?-�!indexauth_user_groups_fbfc09f1auth_user_groupsCREATE INDEX "auth_user_groups_fbfc09f1" ON "auth_user_groups" ("user_id")�?-�#indexauth_user_groups_bda51c3cauth_user_groupsCREATE INDEX "auth_user_groups_bda51c3c" ON "auth_user_groups" ("group_id")
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                