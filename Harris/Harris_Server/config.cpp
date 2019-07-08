class CfgPatches
{
	class Harris_Server
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Data_F"};
	};
};

class CfgFunctions
{
	class Server
	{
		class Init
		{
			file = "\Harris_Server";
			class initFunctions { postInit=1; };
		};
	};
	class MySQL
	{
		class ExtDB
		{
			file = "Harris_Server\Server\MYSQL";
			class ExtDBasync {};
            class ExtDBinit {};
			class ExtDBstrip {};
			class ExtDBquery {};
		};
	};
};