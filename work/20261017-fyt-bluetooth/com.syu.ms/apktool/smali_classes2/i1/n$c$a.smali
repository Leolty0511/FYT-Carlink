.class public Li1/n$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li1/n$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/n$c;


# direct methods
.method public constructor <init>(Li1/n$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/n$c$a;->a:Li1/n$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lu0/d;->U1(I)V

    return-void
.end method
