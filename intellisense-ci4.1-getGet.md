# Problème d'intellisense pour CodeIgniter 4.1 et +

Avec la version 4.1.1 et + de CodeIgniter, l'intellisense de VScode ne trouve pas les méthodes de l'attibut request (dans les controllers)
```
 "Undefined method 'getGet'.intelephense(1013)".
```

Solution : https://github.com/bmewburn/vscode-intelephense/issues/1670

> If you look at the src for 4.0.1 $request is typed as HTTP\IncomingRequest which is the concrete class that declares a getVar function. Then in 4.1 it has become RequestInterface which does not declare getGet.

Donc on peut **```modifier la documentation```** de l'attribut CodeIgniter\Controller::$request dans le framework.

Modifiez le fichier : **```\vendor\codeigniter4\framework\system\Controller.php```**

Modif :
```
namespace CodeIgniter;

/**
 * Class Controller
 */
class Controller
{
	/**
	 * Instance of the main Request object.
	 *
	 * @var HTTP\IncomingRequest // à la place de RequestInterface
	 */
	protected $request;
}

