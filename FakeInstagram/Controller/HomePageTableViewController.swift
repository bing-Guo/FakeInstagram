import UIKit

class HomePageTableViewController: UITableViewController {

    @IBOutlet var homePageTableView: UITableView!
    
    let data: [PostPageProtocol] = Database.share
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        setUpTabBar()
    }
    
    /* MARK: - Set up */
    func setUpTableView(){
        homePageTableView.register(UINib(nibName: "StoriesTableViewCell", bundle: nil), forCellReuseIdentifier: "StoriesTableViewCell")
        homePageTableView.register(UINib(nibName: "UserInfoTableViewCell", bundle: nil), forCellReuseIdentifier: "UserInfoTableViewCell")
        homePageTableView.register(UINib(nibName: "PostImagesTableViewCell", bundle: nil), forCellReuseIdentifier: "PostImagesTableViewCell")
        homePageTableView.register(UINib(nibName: "ActionTableViewCell", bundle: nil), forCellReuseIdentifier: "ActionTableViewCell")
        homePageTableView.register(UINib(nibName: "PostTextTableViewCell", bundle: nil), forCellReuseIdentifier: "PostTextTableViewCell")
        
        homePageTableView.separatorStyle = .none
    }
    
    func setUpTabBar() {
        self.tabBarController?.tabBar.unselectedItemTintColor = UIColor._standard_black
        self.tabBarController?.tabBar.tintColor = UIColor._standard_black
    }
    
    /* MARK: - Tableview datasource and delegate */
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let section = indexPath.section
        
        if data[section] is StoryViewModel {
            return 100
        } else if data[section] is UserInfoViewModel {
            return 60
        } else if data[section] is PostImageViewModel {
            return UITableView.automaticDimension
        } else if data[section] is ActionViewModel {
            return 60
        } else if data[section] is PostTextViewModel {
            return 100
        }
        
        return .zero
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let section = indexPath.section
        
        if let storyViewModel = data[section] as? StoryViewModel {
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesTableViewCell", for: indexPath) as! StoriesTableViewCell
            cell.viewModel = storyViewModel
            return cell
        } else if let userInfoViewModel = data[section] as? UserInfoViewModel {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UserInfoTableViewCell", for: indexPath) as! UserInfoTableViewCell
            cell.updataWith(object: userInfoViewModel)
            return cell
        } else if let postViewModel = data[section] as? PostImageViewModel {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PostImagesTableViewCell", for: indexPath) as! PostImagesTableViewCell
            cell.updataWith(object: postViewModel)
            return cell
        } else if let actionViewModel = data[section] as? ActionViewModel {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ActionTableViewCell", for: indexPath) as! ActionTableViewCell
            return cell
        } else if let postTextViewModel = data[section] as? PostTextViewModel {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PostTextTableViewCell", for: indexPath) as! PostTextTableViewCell
            cell.updateWith(object: postTextViewModel)
            return cell
        }
        
        return UITableViewCell()
    }

}




