.class public final synthetic Lcom/android/internal/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/android/internal/app/AccessibilityButtonChooserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/AccessibilityButtonChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/a;->b:Lcom/android/internal/app/AccessibilityButtonChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissed()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/a;->b:Lcom/android/internal/app/AccessibilityButtonChooserActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/app/a;->b:Lcom/android/internal/app/AccessibilityButtonChooserActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->a(Lcom/android/internal/app/AccessibilityButtonChooserActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
