import UIKit

class StoriesTableViewCell: UITableViewCell {

    @IBOutlet weak var storiesCollectionView: UICollectionView!
    @IBOutlet weak var spearatorLine: UIView!
    var viewModel: StoryViewModel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpCollectionView()
    }

    func setUpCollectionView() {
        storiesCollectionView.register(UINib(nibName: "StoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "StoriesCollectionViewCell")
        storiesCollectionView.dataSource = self
        storiesCollectionView.delegate = self
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 72, height: 100)
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        storiesCollectionView.showsHorizontalScrollIndicator = false
        storiesCollectionView.setCollectionViewLayout(layout, animated: false)
    }
}

extension StoriesTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let stories = viewModel?.getStories() else { return 0 }
        return stories.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoriesCollectionViewCell", for: indexPath) as! StoriesCollectionViewCell
        
        guard let stories = viewModel?.getStories() else { return cell }
        
        cell.nickname.text = stories[indexPath.row].author.nickname
        cell.headShot.image = UIImage(named: stories[indexPath.row].author.headShot)
        
        
        return cell
    }
}
