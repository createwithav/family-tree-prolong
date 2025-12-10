# 🌳 Logic-Based Family Tree Analyzer

![Prolog](https://img.shields.io/badge/Language-Prolog-red?style=for-the-badge&logo=prolog)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

A logic programming project exploring family relationships, inference rules, and recursion using **Prolog**. This system defines a knowledge base of facts and rules to infer complex relationships like cousins, grandparents, and multi-generational descendants.

---

## 🚀 Features

- **Fact Definition**: Establishes a database of parents and genders.
- **Rule Inference**: Logic rules to determine relationships dynamically:
  - 👴 **Grandparent**: Infers two-generation gaps.
  - 👫 **Sibling**: Identifies shared parents.
  - 👯 **Cousin**: Links children of siblings.
  - 🧬 **Descendant**: Uses **recursion** to traverse n-generations of lineage.

## 🛠️ Installation & Usage

1. **Install SWI-Prolog** (or any standard Prolog interpreter).
   - [Download SWI-Prolog](https://www.swi-prolog.org/Download.html)
2. **Clone the Repository**
   ```bash
   git clone [https://github.com/createwithav/family-tree-prolog.git](https://github.com/yourusername/family-tree-prolong.git)
   cd family-tree-prolong
