.class public Landroid/content/pm/PackageParser$ApkLite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkLite"
.end annotation


# instance fields
.field public final certificates:[[Ljava/security/cert/Certificate;

.field public final codePath:Ljava/lang/String;

.field public final configForSplit:Ljava/lang/String;

.field public final coreApp:Z

.field public final debuggable:Z

.field public final extractNativeLibs:Z

.field public final installLocation:I

.field public isFeatureSplit:Z

.field public final isolatedSplits:Z

.field public final multiArch:Z

.field public final packageName:Ljava/lang/String;

.field public final revisionCode:I

.field public final signatures:[Landroid/content/pm/Signature;

.field public final splitName:Ljava/lang/String;

.field public final use32bitAbi:Z

.field public final usesSplitName:Ljava/lang/String;

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;ZZZZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Landroid/content/pm/VerifierInfo;",
            ">;[",
            "Landroid/content/pm/Signature;",
            "[[",
            "Ljava/security/cert/Certificate;",
            "ZZZZZZ)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    .line 13
    .line 14
    move v1, p4

    .line 15
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    .line 22
    .line 23
    move v1, p7

    .line 24
    iput v1, v0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 25
    .line 26
    move v1, p8

    .line 27
    iput v1, v0, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    .line 28
    .line 29
    move v1, p9

    .line 30
    iput v1, v0, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    .line 31
    .line 32
    invoke-interface {p10}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    new-array v1, v1, [Landroid/content/pm/VerifierInfo;

    .line 37
    .line 38
    move-object v2, p10

    .line 39
    invoke-interface {p10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, [Landroid/content/pm/VerifierInfo;

    .line 44
    .line 45
    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 46
    .line 47
    move-object v1, p11

    .line 48
    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    .line 49
    .line 50
    move-object v1, p12

    .line 51
    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->certificates:[[Ljava/security/cert/Certificate;

    .line 52
    .line 53
    move/from16 v1, p13

    .line 54
    .line 55
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    .line 56
    .line 57
    move/from16 v1, p14

    .line 58
    .line 59
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->debuggable:Z

    .line 60
    .line 61
    move/from16 v1, p15

    .line 62
    .line 63
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    .line 64
    .line 65
    move/from16 v1, p16

    .line 66
    .line 67
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->use32bitAbi:Z

    .line 68
    .line 69
    move/from16 v1, p17

    .line 70
    .line 71
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    .line 72
    .line 73
    move/from16 v1, p18

    .line 74
    .line 75
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->isolatedSplits:Z

    .line 76
    .line 77
    return-void
.end method
