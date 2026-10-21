.class public abstract Lf0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "forName(\"UTF-8\")"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lf0/a;->a:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    const-string v0, "UTF-16"

    .line 15
    .line 16
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "forName(\"UTF-16\")"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "UTF-16BE"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "forName(\"UTF-16BE\")"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "UTF-16LE"

    .line 37
    .line 38
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "forName(\"UTF-16LE\")"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "US-ASCII"

    .line 48
    .line 49
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "forName(\"US-ASCII\")"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "ISO-8859-1"

    .line 59
    .line 60
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "forName(\"ISO-8859-1\")"

    .line 65
    .line 66
    invoke-static {v0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
