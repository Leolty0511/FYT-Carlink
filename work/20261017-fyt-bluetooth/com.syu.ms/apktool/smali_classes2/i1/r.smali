.class public Li1/r;
.super Li1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Z

.field public l:Le/e$a;

.field public m:I

.field public n:I

.field public o:J

.field public p:Lo1/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li1/a;-><init>(II)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Li1/r;->k:Z

    .line 3
    new-instance p1, Le/e$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Le/e$a;-><init>(III)V

    iput-object p1, p0, Li1/r;->l:Le/e$a;

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Li1/r;->m:I

    iput p1, p0, Li1/r;->n:I

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Li1/r;->o:J

    .line 6
    new-instance p1, Li1/r$a;

    invoke-direct {p1, p0}, Li1/r$a;-><init>(Li1/r;)V

    iput-object p1, p0, Li1/r;->p:Lo1/p;

    .line 7
    sget-object p2, Lu0/c;->O:Lo1/z;

    invoke-virtual {p2, p1}, Lo1/z;->a(Lo1/p;)V

    const-string p1, "Device"

    const-string p2, "PluginCommonZhiHangTV"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public l([I)V
    .locals 0

    return-void
.end method

.method public w(II)V
    .locals 5

    const/16 v0, 0x9

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/16 v4, 0x88

    aput v4, v1, v3

    .line 1
    iget v3, p0, Li1/r;->m:I

    const/4 v4, 0x2

    aput v3, v1, v4

    .line 2
    iget v3, p0, Li1/r;->n:I

    const/4 v4, 0x3

    aput v3, v1, v4

    const/4 v3, 0x4

    aput p1, v1, v3

    const/4 p1, 0x5

    aput p2, v1, p1

    const/4 p1, 0x6

    aput v4, v1, p1

    const/4 p1, 0x7

    aput v2, v1, p1

    const/16 p1, 0x8

    aput v2, v1, p1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "serial:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2, v0}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Device"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Li1/a;->h:Li1/b0;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lb/c$b;->f([I)V

    :cond_0
    return-void
.end method
