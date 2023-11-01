//
//  TableViewNoteCell.swift
//  WA7_He_8274
//
//  Created by Christopher on 11/1/23.
//

import UIKit

class TableViewNoteCell: UITableViewCell {
    var wrapperCellView: UIView!
    var labelText: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupWrapperCellView()
        setupLabelText()
        initConstraints()
    }
    
    func setupWrapperCellView(){
        wrapperCellView = UITableViewCell()
        wrapperCellView.translatesAutoresizingMaskIntoConstraints = false
        wrapperCellView.layer.borderColor = UIColor.gray.cgColor
        wrapperCellView.layer.borderWidth = 1
        wrapperCellView.layer.cornerRadius = 10
        self.addSubview(wrapperCellView)
    }
    
    func setupLabelText(){
        labelText = UILabel()
        labelText.translatesAutoresizingMaskIntoConstraints = false
        labelText.font = UIFont.boldSystemFont(ofSize: 24)
        labelText.textAlignment = .left
        wrapperCellView.addSubview(labelText)
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            wrapperCellView.topAnchor.constraint(equalTo: self.topAnchor),
            wrapperCellView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            wrapperCellView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            wrapperCellView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            labelText.topAnchor.constraint(equalTo: wrapperCellView.topAnchor, constant: 8),
            labelText.leadingAnchor.constraint(equalTo: wrapperCellView.leadingAnchor, constant: 8),
            labelText.heightAnchor.constraint(equalToConstant: 20),
                        
            wrapperCellView.heightAnchor.constraint(equalToConstant: 96)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


}
