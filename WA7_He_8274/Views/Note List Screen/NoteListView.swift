//
//  NoteListView.swift
//  WA7_He_8274
//
//  Created by Christopher on 11/1/23.
//

import UIKit

class NoteListView: UIView {
    var tableViewNote: UITableView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        //MARK: initialize the TableView
        setupTableViewContact()
        initConstraints()
    }
    
    func setupTableViewContact() {
        tableViewNote = UITableView()
        tableViewNote.translatesAutoresizingMaskIntoConstraints = false
        tableViewNote.register(TableViewNoteCell.self, forCellReuseIdentifier: "contacts")
        self.addSubview(tableViewNote)
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate([
            tableViewNote.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 8),
            tableViewNote.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            tableViewNote.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            tableViewNote.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
