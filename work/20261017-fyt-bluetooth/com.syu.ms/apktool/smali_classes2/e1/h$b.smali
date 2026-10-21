.class public Le1/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/h;


# direct methods
.method public constructor <init>(Le1/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/h$b;->a:Le1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Le1/h$b;->a:Le1/h;

    invoke-virtual {v0}, Le1/h;->G()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le1/h$b;->a:Le1/h;

    iget-object v0, v0, Le1/h;->J:Ljava/lang/String;

    invoke-static {v0}, Lq1/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lo1/s0;->e([B)[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Le1/h$b;->a:Le1/h;

    const/4 v3, 0x1

    iput-boolean v3, v2, Le1/h;->K:Z

    new-array v2, v3, [I

    const/4 v4, 0x0

    aput v4, v2, v4

    const/16 v5, 0x8d

    .line 5
    invoke-static {v5, v2}, Lu0/d;->I3(I[I)V

    .line 6
    iget-object v2, p0, Le1/h$b;->a:Le1/h;

    invoke-virtual {v2}, Le1/h;->H()V

    .line 7
    iget-object v2, p0, Le1/h$b;->a:Le1/h;

    invoke-virtual {v2}, Le1/h;->K()[I

    move-result-object v2

    .line 8
    iget-object v6, p0, Le1/h$b;->a:Le1/h;

    invoke-virtual {v6}, Le1/h;->F()V

    .line 9
    iget-object v6, p0, Le1/h$b;->a:Le1/h;

    invoke-virtual {v6, v0}, Le1/h;->N([I)V

    .line 10
    iget-object v6, p0, Le1/h$b;->a:Le1/h;

    array-length v0, v0

    invoke-virtual {v6, v0}, Le1/h;->J(I)V

    .line 11
    iget-object v0, p0, Le1/h$b;->a:Le1/h;

    invoke-virtual {v0, v2}, Le1/h;->O([I)V

    new-array v0, v3, [I

    const/16 v2, 0x64

    aput v2, v0, v4

    .line 12
    invoke-static {v5, v0}, Lu0/d;->I3(I[I)V

    .line 13
    iget-object v0, p0, Le1/h$b;->a:Le1/h;

    iput-object v1, v0, Le1/h;->J:Ljava/lang/String;

    .line 14
    iput-boolean v4, v0, Le1/h;->K:Z

    return-void

    .line 15
    :cond_2
    :goto_0
    iget-object v0, p0, Le1/h$b;->a:Le1/h;

    iput-object v1, v0, Le1/h;->J:Ljava/lang/String;

    return-void
.end method
