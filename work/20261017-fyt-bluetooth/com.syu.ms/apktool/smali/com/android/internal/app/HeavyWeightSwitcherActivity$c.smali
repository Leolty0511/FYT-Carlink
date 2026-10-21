.class public Lcom/android/internal/app/HeavyWeightSwitcherActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/HeavyWeightSwitcherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/app/HeavyWeightSwitcherActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$c;->a:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$c;->a:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
