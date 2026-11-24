Name:           count-files
Version:        1.0.0
Release:        1%{?dist}
Summary:        Count regular files in /etc
License:        MIT
BuildArch:      noarch

Source0:        count-files.sh

%description
A simple Bash utility that counts regular files in /etc,
excluding directories and symbolic links.

%prep

%build

%install
mkdir -p %{buildroot}/usr/bin
install -m 0755 %{SOURCE0} %{buildroot}/usr/bin/count-files

%files
/usr/bin/count-files

%changelog
* Tue Nov 24 2026 Yaroslav <keddyt147@gmail.com> - 1.0.0-1
- Initial package