.class public Lk0/z4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/z4;


# direct methods
.method public constructor <init>(Lk0/z4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/z4$a;->a:Lk0/z4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/z4$a;->a:Lk0/z4;

    sget v1, Lu0/b;->a0:I

    invoke-static {v0, v1}, Lk0/z4;->a3(Lk0/z4;I)I

    .line 2
    iget-object v0, p0, Lk0/z4$a;->a:Lk0/z4;

    invoke-static {v0}, Lk0/z4;->b3(Lk0/z4;)V

    return-void
.end method
