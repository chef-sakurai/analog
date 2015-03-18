@test "ファイルが正しい場所にインストールされている" {
    ls -la /usr/bin/analog
}

@test "ファイルに実行権限がある" {
    test -x /usr/bin/analog
}

@test "ファイルは正しいバージョンである" {
    /usr/bin/analog 2>/dev/null | grep "analog 6.0"
}
