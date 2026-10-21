.class Landroid/content/pm/PackageParser$ParseComponentArgs;
.super Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseComponentArgs"
.end annotation


# instance fields
.field public final descriptionRes:I

.field public final enabledRes:I

.field public flags:I

.field public final processRes:I

.field public final sepProcesses:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII)V

    .line 2
    iput-object p7, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sepProcesses:[Ljava/lang/String;

    .line 3
    iput p8, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    .line 4
    iput p9, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    .line 5
    iput p10, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->enabledRes:I

    return-void
.end method
