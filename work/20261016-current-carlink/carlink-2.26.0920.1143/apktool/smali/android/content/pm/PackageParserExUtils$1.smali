.class final Landroid/content/pm/PackageParserExUtils$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/PackageParserExUtils;->collectNonSystemAppCertificates(Landroid/content/pm/PackageParser$Package;Ljava/util/List;Landroid/util/jar/StrictJarFile;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$connectedSignal:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$endItem:I

.field final synthetic val$jarFile:Landroid/util/jar/StrictJarFile;

.field final synthetic val$pkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic val$startItem:I

.field final synthetic val$toVerify:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/util/List;Landroid/util/jar/StrictJarFile;IILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p2, p0, Landroid/content/pm/PackageParserExUtils$1;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iput-object p3, p0, Landroid/content/pm/PackageParserExUtils$1;->val$toVerify:Ljava/util/List;

    iput-object p4, p0, Landroid/content/pm/PackageParserExUtils$1;->val$jarFile:Landroid/util/jar/StrictJarFile;

    iput p5, p0, Landroid/content/pm/PackageParserExUtils$1;->val$startItem:I

    iput p6, p0, Landroid/content/pm/PackageParserExUtils$1;->val$endItem:I

    iput-object p7, p0, Landroid/content/pm/PackageParserExUtils$1;->val$connectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageParserExUtils$1;->val$pkg:Landroid/content/pm/PackageParser$Package;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/content/pm/PackageParserExUtils$1;->val$toVerify:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/content/pm/PackageParserExUtils$1;->val$jarFile:Landroid/util/jar/StrictJarFile;

    .line 6
    .line 7
    iget v3, p0, Landroid/content/pm/PackageParserExUtils$1;->val$startItem:I

    .line 8
    .line 9
    iget v4, p0, Landroid/content/pm/PackageParserExUtils$1;->val$endItem:I

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParserExUtils;->access$000(Landroid/content/pm/PackageParser$Package;Ljava/util/List;Landroid/util/jar/StrictJarFile;II)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Landroid/content/pm/PackageParserExUtils;->access$102(Z)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParserExUtils$1;->val$connectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
