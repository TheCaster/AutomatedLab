﻿param
(
    [Parameter(Mandatory)]
    [AutomatedLab.Lab]
    $Lab
)

Describe "$($Lab.Name) VisualStudio2015" -Tag VisualStudio2015 {

    Context "Role deployment successful" {
        It "Should return the correct amount of machines" {
            (Get-LabVm -Role VisualStudio2015).Count | Should -Be $Lab.Machines.Where({$_.Roles.Name -contains 'VisualStudio2015'}).Count
        }
    }
}
