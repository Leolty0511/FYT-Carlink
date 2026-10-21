.class public Landroid/content/pm/PackageParser$PackageLite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageLite"
.end annotation


# instance fields
.field public final baseCodePath:Ljava/lang/String;

.field public final baseRevisionCode:I

.field public final codePath:Ljava/lang/String;

.field public final configForSplit:[Ljava/lang/String;

.field public final coreApp:Z

.field public final debuggable:Z

.field public final extractNativeLibs:Z

.field public final installLocation:I

.field public final isFeatureSplits:[Z

.field public final isolatedSplits:Z

.field public final multiArch:Z

.field public final packageName:Ljava/lang/String;

.field public final splitCodePaths:[Ljava/lang/String;

.field public final splitNames:[Ljava/lang/String;

.field public final splitRevisionCodes:[I

.field public final use32bitAbi:Z

.field public final usesSplitNames:[Ljava/lang/String;

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 9
    .line 10
    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    .line 11
    .line 12
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    .line 13
    .line 14
    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    .line 15
    .line 16
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 17
    .line 18
    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 19
    .line 20
    iput-object p3, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    .line 21
    .line 22
    iput-object p4, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    .line 23
    .line 24
    iput-object p5, p0, Landroid/content/pm/PackageParser$PackageLite;->usesSplitNames:[Ljava/lang/String;

    .line 25
    .line 26
    iput-object p6, p0, Landroid/content/pm/PackageParser$PackageLite;->configForSplit:[Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, p0, Landroid/content/pm/PackageParser$PackageLite;->codePath:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p2, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p1, p0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p7, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    .line 35
    .line 36
    iget p1, p2, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    .line 37
    .line 38
    iput p1, p0, Landroid/content/pm/PackageParser$PackageLite;->baseRevisionCode:I

    .line 39
    .line 40
    iput-object p8, p0, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    .line 41
    .line 42
    iget-boolean p1, p2, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    .line 43
    .line 44
    iput-boolean p1, p0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    .line 45
    .line 46
    iget-boolean p1, p2, Landroid/content/pm/PackageParser$ApkLite;->debuggable:Z

    .line 47
    .line 48
    iput-boolean p1, p0, Landroid/content/pm/PackageParser$PackageLite;->debuggable:Z

    .line 49
    .line 50
    iget-boolean p1, p2, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    .line 51
    .line 52
    iput-boolean p1, p0, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    .line 53
    .line 54
    iget-boolean p1, p2, Landroid/content/pm/PackageParser$ApkLite;->use32bitAbi:Z

    .line 55
    .line 56
    iput-boolean p1, p0, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    .line 57
    .line 58
    iget-boolean p1, p2, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    .line 59
    .line 60
    iput-boolean p1, p0, Landroid/content/pm/PackageParser$PackageLite;->extractNativeLibs:Z

    .line 61
    .line 62
    iget-boolean p1, p2, Landroid/content/pm/PackageParser$ApkLite;->isolatedSplits:Z

    .line 63
    .line 64
    iput-boolean p1, p0, Landroid/content/pm/PackageParser$PackageLite;->isolatedSplits:Z

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public getAllCodePaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object v0
.end method
