import UIKit

class HomePageTableViewController: UITableViewController {

    @IBOutlet var homePageTableView: UITableView!
    
    enum TableSection: Int {
      case story = 0, top, post
    }
    
    let data: [PostPageProtocol] = IGData.share
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    
    func setUpTableView(){
        homePageTableView.register(UINib(nibName: "StoriesTableViewCell", bundle: nil), forCellReuseIdentifier: "StoriesTableViewCell")
        homePageTableView.register(UINib(nibName: "UserInfoTableViewCell", bundle: nil), forCellReuseIdentifier: "UserInfoTableViewCell")
        homePageTableView.register(UINib(nibName: "PostsTableViewCell", bundle: nil), forCellReuseIdentifier: "PostsTableViewCell")
    }
    
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
            return 50
        } else if data[section] is PostViewModel {
            return 50
        }
        
        return .zero
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.section)
        
        let section = indexPath.section
        
        if data[section] is StoryViewModel {
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesTableViewCell", for: indexPath) as! StoriesTableViewCell
            cell.viewModel = data[section] as! StoryViewModel
            return cell
        } else if data[section] is UserInfoViewModel {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UserInfoTableViewCell", for: indexPath) as! UserInfoTableViewCell
            return cell
        } else if data[section] is PostViewModel {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PostsTableViewCell", for: indexPath) as! PostsTableViewCell
            return cell
        }
        
        return UITableViewCell()
    }

}




