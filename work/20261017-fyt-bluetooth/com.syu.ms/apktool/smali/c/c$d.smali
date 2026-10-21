.class public Lc/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c;->q(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Lc/c;


# direct methods
.method public constructor <init>(Lc/c;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c$d;->c:Lc/c;

    iput p2, p0, Lc/c$d;->a:I

    iput-wide p3, p0, Lc/c$d;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lc/c$d;->c:Lc/c;

    iget v1, p0, Lc/c$d;->a:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lc/c$d;->b:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v7}, Lc/c;->r(IIIJJ)V

    return-void
.end method
