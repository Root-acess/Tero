# Contributing to Tero

We welcome contributions to the Tero Framework! This guide outlines the process for contributing code, documentation, or other improvements.

## 🤝 How to Contribute

1. **Fork the Repository**: Fork [Tero on GitHub](https://github.com/your-org/tero).
2. **Create a Feature Branch**: Use `git checkout -b feat/my-feature` or `fix/my-bugfix` for clarity.
3. **Commit Changes**: Follow [Conventional Commits](https://www.conventionalcommits.org/) (e.g., `feat: add new VPC module`, `fix: correct subnet CIDR validation`).
4. **Test Locally**: Validate changes with `terraform validate` and Tero’s testing framework (`lib/tests`).
5. **Submit a Pull Request**: Push your branch and create a PR with a clear description.
6. **Pass CI Checks**: Ensure all automated tests (linting, validation, unit tests) pass.
7. **Code Review**: Address feedback from maintainers within 48 hours.

## 📋 Contribution Guidelines

- **Code Style**: Follow Terraform best practices (e.g., modular structure, clear variable names).
- **Documentation**: Update `README.md` or relevant docs (`docs/`) for all changes.
- **Testing**: Include tests for new modules or features in `lib/tests`.
- **Commit Messages**: Use Conventional Commits with clear, concise descriptions.
- **Scope**: Keep changes focused; large features may require discussion via GitHub Issues.

Example commit:
```bash
git commit -m "feat(networking): add transit gateway module"
```

## 🛠️ Development Setup

1. Clone your fork:
   ```bash
   git clone https://github.com/your-username/tero.git
   cd tero
   ```

2. Install dependencies:
   - Terraform >= 1.5.0
   - AWS CLI (configured)
   - Go (for Terratest, optional)

3. Run tests:
   ```bash
   terraform init
   terraform validate
   go test ./lib/tests
   ```

## 🧪 Testing Requirements

- **Unit Tests**: Cover new modules with Terratest or equivalent.
- **Validation**: Ensure `terraform validate` passes.
- **Compliance**: Verify security and best practice adherence (e.g., CIS benchmarks).
- **Documentation**: Include a `README.md` in new module directories.

## 📬 Contact

- **Issues**: Open a GitHub Issue for bugs or feature requests.
- **Security**: Report vulnerabilities to [security@your-org.com](mailto:security@your-org.com).
- **Discussion**: Join our [community Slack](https://your-org.slack.com) (request access via [support@your-org.com](mailto:support@your-org.com)).

## ✅ Review Process

1. Submit PR with clear title and description.
2. Automated CI checks run (linting, tests, validation).
3. Maintainers review within 72 hours.
4. Address feedback and update PR as needed.
5. PR is merged after approval.

## 🙏 Acknowledgments

Thank you for contributing to Tero! All contributors are recognized in our [CHANGELOG.md](CHANGELOG.md).