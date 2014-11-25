import UIKit

class RootViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    var pageViewController: UIPageViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        pageViewController = UIPageViewController(transitionStyle: .Scroll, navigationOrientation: .Horizontal, options: nil)
        pageViewController!.delegate = self

        let startingViewController: DataViewController = loadPageViewControllerForIndex(0)!
        pageViewController!.setViewControllers([startingViewController], direction: .Forward, animated: false, completion: nil)
        pageViewController!.dataSource = self

        addChildViewController(pageViewController!)
        view.addSubview(pageViewController!.view)
        pageViewController!.view.frame = view.bounds
        pageViewController!.didMoveToParentViewController(self)
        view.gestureRecognizers = pageViewController!.gestureRecognizers
    }

    private func loadPageViewControllerForIndex(index: Int) -> DataViewController? {
        if (index >= 0 && index <= 10) {
            let dataViewController = storyboard!.instantiateViewControllerWithIdentifier("DataViewController") as DataViewController
            dataViewController.keyboardType = UIKeyboardType(rawValue: index)!
            return dataViewController
        } else {
            return nil
        }
    }

    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        let pageController = viewController as DataViewController
        let index: Int = pageController.keyboardType.rawValue
        return (index > 0) ? loadPageViewControllerForIndex(index-1) : nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        let pageController = viewController as DataViewController
        let index: Int = pageController.keyboardType.rawValue
        return (index < 10) ? loadPageViewControllerForIndex(index+1) : nil
    }
}
