.class public Le1/h$c;
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
    iput-object p1, p0, Le1/h$c;->a:Le1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le1/h$c;->a:Le1/h;

    const/16 v1, 0xff

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Le1/h;->D(II)I

    .line 2
    iget-object v0, p0, Le1/h$c;->a:Le1/h;

    const/16 v2, 0xee

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Le1/h;->D(II)I

    .line 3
    iget-object v0, p0, Le1/h$c;->a:Le1/h;

    const/16 v2, 0xb8

    invoke-virtual {v0, v1, v2}, Le1/h;->D(II)I

    .line 4
    iget-object v0, p0, Le1/h$c;->a:Le1/h;

    iget-boolean v1, v0, Le1/h;->F:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Le1/h;->F:Z

    :cond_0
    return-void
.end method
