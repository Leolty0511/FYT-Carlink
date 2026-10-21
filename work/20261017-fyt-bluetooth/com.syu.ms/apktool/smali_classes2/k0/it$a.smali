.class public Lk0/it$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/it;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/it;


# direct methods
.method public constructor <init>(Lk0/it;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/it$a;->a:Lk0/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/it$a;->a:Lk0/it;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lk0/it;->x:Z

    .line 2
    invoke-static {v1}, Lu0/d;->x0(I)V

    return-void
.end method
