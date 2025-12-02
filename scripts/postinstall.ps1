# postinstall.ps1 - run elevated by installer; appends C:\mingw64\bin to Machine PATH
$mingwBin = "C:\mingw64\bin"
try {
    $current = [Environment]::GetEnvironmentVariable("Path", "Machine")
    if ($current -notmatch [regex]::Escape($mingwBin)) {
        $new = $current + ";" + $mingwBin
        [Environment]::SetEnvironmentVariable("Path", $new, "Machine")
        Write-Output "Added $mingwBin to machine PATH."
    } else {
        Write-Output "$mingwBin already present in machine PATH."
    }
} catch {
    Write-Output "Failed to update PATH: $_"
    exit 1
}
$signature = @'
[DllImport("user32.dll", SetLastError = true)]
public static extern IntPtr SendMessageTimeout(IntPtr hWnd, uint Msg, UIntPtr wParam, string lParam,
    uint fuFlags, uint uTimeout, out UIntPtr lpdwResult);
'@

Add-Type -MemberDefinition $signature -Name NativeMethods -Namespace User32 | Out-Null
[User32.NativeMethods]::SendMessageTimeout([IntPtr]0xffff, 0x1A, [UIntPtr]0, "Environment", 0, 1000, [ref]([UIntPtr]::Zero)) | Out-Null

exit 0
