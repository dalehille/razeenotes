---
title: Verify components
---

All components should show `1/1` in the **READY** column of your CLI output.

   ```bash
   kubectl get deployments -n razee
   ```

   Example output:

   ```bash
   NAME                          READY   UP-TO-DATE   AVAILABLE   AGE
   featureflagsetld-controller   1/1     1            1           53m
   managedset-controller         1/1     1            1           53m
   mongo                         1/1     1            1           34m
   mustachetemplate-controller   1/1     1            1           53m
   razeedash                     1/1     1            1           25m
   razeedash-api                 1/1     1            1           25m
   razeedeploy-delta             1/1     1            1           53m
   remoteresource-controller     1/1     1            1           53m
   remoteresources3-controller   1/1     1            1           53m
   ```

---
Next: Open the [[RazeeDash welcome screen]]
